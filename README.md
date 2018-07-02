# npm cache

A deployment of [Verdaccio](https://www.verdaccio.org/) to speed up and stablize npm builds.

## Usage

run `make` for usage

## Access

The [Gitlab runner](https://gitlab.com/utopia-planitia/gitlab-kubernetes-runner) checks for npm and configures it to use the cache. When npm is found `npm set registry http://npm-registry.npm-registry.svc` is run.

## resources
- [kubernetes helm verdaccio chart](https://github.com/kubernetes/charts/tree/master/stable/verdaccio)
- [verdaccio docker img](https://hub.docker.com/r/verdaccio/verdaccio)
