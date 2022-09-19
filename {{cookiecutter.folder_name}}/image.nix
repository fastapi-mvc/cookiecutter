{ pkgs ? import <nixpkgs> { }
, name ? "{{cookiecutter.docker_image_name}}"
, tag ? "latest"
}:

let
  app = pkgs.callPackage ./default.nix {
    python = pkgs.python39;
    poetry2nix = pkgs.poetry2nix;
  };
in
pkgs.dockerTools.buildImage {
  inherit name tag;

  contents = [
    app
    pkgs.cacert
  ];

  runAsRoot = ''
    #!${pkgs.runtimeShell}
    ${pkgs.dockerTools.shadowSetup}
    mkdir /tmp
    chmod 777 -R /tmp
    groupadd -r nonroot
    useradd -r -g nonroot nonroot
    mkdir -p /workspace
    chown nonroot:nonroot /workspace
  '';

  config = {
    Env = [
      "SSL_CERT_FILE=${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt"
      "PYTHONDONTWRITEBYTECODE=1"
      "PYTHONUNBUFFERED=1"
    ];
    User = "nonroot";
    WorkingDir = "/workspace";
    Entrypoint = [ "${pyEnv}/bin/{{cookiecutter.script_name}}" ];
  };
}
