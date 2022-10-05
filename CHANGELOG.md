# Changelog

This file documents changes to [fastapi-mvc/cookiecutter](https://github.com/fastapi-mvc/cookiecutter). The release numbering uses [semantic versioning](http://semver.org).

## 0.3.0 (05.10.2022)

### Breaking Changes

* Drop Python 3.7 support. PR [#23](https://github.com/fastapi-mvc/cookiecutter/pull/23)

### Features

* GH Actions: Add `dependabot.yml` [f750aa3](https://github.com/fastapi-mvc/cookiecutter/commit/f750aa3aa6914b0246e87d6ecab90f6d9cb7387e).

### Docs

* Extend project documentation [#21](https://github.com/fastapi-mvc/cookiecutter/issues/21). PR [#20](https://github.com/fastapi-mvc/cookiecutter/pull/20)

### Internal

* Bump crazy-max/ghaction-github-pages from 2.5.0 to 3.0.0 [eb84359](https://github.com/fastapi-mvc/cookiecutter/commit/eb843596ed1743cba027f6ecfcb36c2b06762373).
* Bump fkirc/skip-duplicate-actions from 3.4.1 to 5.2.0 [1b527a4](https://github.com/fastapi-mvc/cookiecutter/commit/1b527a451c6c47e8f0178ca5e85a0c06989809fb).
* Remove hardcoded workflow_dispatch for return-dispatch action in GH workflow templates [#17](https://github.com/fastapi-mvc/cookiecutter/issues/17). PR [#26](https://github.com/fastapi-mvc/cookiecutter/pull/26)
* Drop mock dev-dependency [#12](https://github.com/fastapi-mvc/cookiecutter/issues/12). PR [#25](https://github.com/fastapi-mvc/cookiecutter/pull/25)
* Update dependencies. PR [#24](https://github.com/fastapi-mvc/cookiecutter/pull/24)
  * fastapi (0.82.0 -> 0.85.0)
  * aiohttp (3.8.1 -> 3.8.3)
  * pytest (6.2.5 -> 0.82.0)
  * pytest-cov (2.12.0 -> 4.0.0)
  * pytest-asyncio (0.15.1 -> 0.19.0)
  * requests (2.25.1 -> 2.28.1)
  * aioresponses (0.7.2 - > 0.7.3)
  * flake8 (3.9.2 -> 5.0.4)
  * black (22.3.0 -> 22.8.0)
  * Sphinx (4.5.0 -> 5.2.3)
  * myst-parser (0.17.2 -> 0.18.1)

## 0.2.0 (29.09.2022)

### Features

* Refactor Makefile to utilize different set of targets for Nix and Poetry [#2](https://github.com/fastapi-mvc/cookiecutter/issues/2). PR [#15](https://github.com/fastapi-mvc/cookiecutter/pull/15)
* Add Nix CI workflow [#1](https://github.com/fastapi-mvc/cookiecutter/issues/1). PR [#15](https://github.com/fastapi-mvc/cookiecutter/pull/15)

### Internal

* Update GitHub actions [#14](https://github.com/fastapi-mvc/cookiecutter/issues/14).PR [#16](https://github.com/fastapi-mvc/cookiecutter/pull/16)
* Add CI workflow for executing template checks [#3](https://github.com/fastapi-mvc/cookiecutter/issues/3). PR [#6](https://github.com/fastapi-mvc/cookiecutter/pull/6)

## 0.1.0 (18.09.2022)

* Initial release - [fastapi-mvc/fastapi-mvc#146](https://github.com/fastapi-mvc/fastapi-mvc/issues/146)
