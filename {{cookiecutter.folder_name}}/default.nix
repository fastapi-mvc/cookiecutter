{ lib
, python
, poetry2nix
}:

poetry2nix.mkPoetryApplication {
  inherit python;

  projectDir = ./.;
  pyproject = ./pyproject.toml;
  poetrylock = ./poetry.lock;

  pythonImportsCheck = [ "{{cookiecutter.package_name}}" ];

  meta = with lib; {
    homepage = "{{cookiecutter.repo_url}}";
    description = "{{cookiecutter.project_description}}";
  };
}
