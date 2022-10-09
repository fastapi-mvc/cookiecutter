# Fastapi-mvc cookiecutter

## NOTE! 

**From [fastapi-mvc](https://github.com/fastapi-mvc/fastapi-mvc) version `0.18.0` onwards, cookiecutter is no longer used for scaffolding a new project.**

---

## Features

* Generated project based on MVC architectural pattern
* WSGI + ASGI production server
* Generated project comes with Sphinx documentation and 100% unit tests coverage
* Kubernetes deployment with Redis HA cluster
* Makefile, GitHub actions and utilities
* Helm chart for Kubernetes deployment
* Dockerfile with K8s and cloud in mind
* Uses Poetry dependency management
* Includes set of Nix expressions
* Virtualized reproducible development environment using Vagrant

## Quickstart

To use this template outside `fastapi-mvc`:

1. Install cookiecutter
```shell
pip install -U cookiecutter
# Or use Nix
nix-shell shell.nix
```

2. Generate new project:
```shell
cookiecutter https://github.com/fastapi-mvc/cookiecutter.git
```

## License

[MIT](https://github.com/fastapi-mvc/cookiecutter/blob/master/LICENSE)
