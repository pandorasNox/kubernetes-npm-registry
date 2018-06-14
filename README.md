# kubernetes integrated npm-registry based on verdaccio

- written for the [utopia-planitia](https://gitlab.com/utopia-planitia) structure

## dependencies
- rook.io

## help

```
make
```

## setup
- ensure to put this directory on the same level as the utopia-planita kubernetes directory
e.g.
    ```
    /foo
        /kubernetes
        /kubernetes-npm-registry
    ```

- ensure your cluster runs

- then run:

    ```
    make deploy
    ```

## on other kubernetes clusters
- ignore the make file (maybe a nice insperation)
- adapt the PersistentVolumeClaim accordingly in [npm-registry.yaml](kubernetes/npm-registry.yaml)
- use kubectl to deploy

## resources
- [kubernetes helm verdaccio chart](https://github.com/kubernetes/charts/tree/master/stable/verdaccio)
- [verdaccio docker img](https://hub.docker.com/r/verdaccio/verdaccio)
- [https://www.verdaccio.org](https://www.verdaccio.org/)

### other registry options
- [nexus server docker](https://hub.docker.com/r/sonatype/nexus3/tags/)
    - [repomanager3 + npm](https://help.sonatype.com/repomanager3/node-packaged-modules-and-npm-registries)
    - [blog post setting up nexus](https://blog.theodo.fr/2016/01/speed-up-npm-install-with-a-nexus-proxy-to-cache-packages/)
