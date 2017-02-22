# observr docker container

Unofficial docker container for observr

see [observr homepage](https://github.com/kevinburke/observr) for information

### License

[MIT License](https://opensource.org/licenses/MIT) located [here](/LICENSE.md)

### Note

This is relatively useless by itself. Since observr is used to execute commands, you would need to either extend this image or link it to another container to run most useful commands

For information on writing observr script files please see the "Scripts" section on the [observr github page](https://github.com/kevinburke/observr/blob/master/README.md)

### Usage

```shell
docker run \
    --name observr_"$(date +%s)" \
    -v "$(pwd)":/app \
    gruen/observr [relative/path/to/script/file]
```
