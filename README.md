# Fastapi-mvc cookiecutter

[![CI](https://github.com/fastapi-mvc/cookiecutter/actions/workflows/main.yml/badge.svg)](https://github.com/fastapi-mvc/cookiecutter/actions/workflows/main.yml)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
![GitHub](https://img.shields.io/badge/python-3.7%20%7C%203.8%20%7C%203.9%20%7C%203.10-blue)
![GitHub](https://img.shields.io/badge/license-MIT-blue)

---

**Example generated project**: [fastapi-mvc/example](https://github.com/fastapi-mvc/example)

---

Cookiecutter template used by [fastapi-mvc/fastapi-mvc](https://github.com/fastapi-mvc/fastapi-mvc) to generate a new project.

## Features

* Generated project Based on MVC architectural pattern
* WSGI + ASGI production server
* Generated project comes with Sphinx documentation and 100% unit tests coverage
* Kubernetes deployment with Redis HA cluster
* Makefile, GitHub actions and utilities
* Helm chart for Kubernetes deployment
* Dockerfile with K8s and cloud in mind
* Generate pieces of code or even your own generators
* Reproducible development environment using Vagrant or Nix

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

## Contributing

TODO

## License

[MIT](https://github.com/fastapi-mvc/cookiecutter/blob/master/LICENSE)
