# kubernetes integrated npm-registry based on verdaccio

- written for [utopia-planitia](https://gitlab.com/utopia-planitia) structure

## dependencies
- rook.io

## help

```
make
```

## setup
ensure to put this directory on the same level as the utopia-planita kubernetes directory
e.g.
/foo
    /kubernetes
    /kubernetes-npm-registry

ensure your cluster runs

then run:

```
make deploy
```

## on other kubernetes clusters
- ignore the make file (maybe a nice insperation)
- adapt the PersistentVolumeClaim accordingly in [npm-registry.yaml](kubernetes/npm-registry.yaml)
- use kubectl to deploy
