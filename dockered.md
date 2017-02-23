# dockered tag

This image is built from the [base docker image](https://store.docker.com/images/995677a1-1f6a-4e2e-929a-fde926abbd95?tab=description).

This allows you to run docker commands ___on the host___ from the container.

__PLEASE__ read that again.

You can run a docker command such as the one below on the host from inside a docker container.

Here is an example similar to how I use this with observr

```shell
docker run -it -rm \
    -v $(pwd):/app \
    -v /var/run/docker.sock:/var/run/docker.sock \
    gruen/observr:dockered \
    observr.rb
```

Then somewhere in `observr.rb` is the following commands

```shell
def code_changed()
    system "docker run -it --rm \
        -v /path/to/volume/ON/HOST:/app \
        phpunit/phpunit:5.7.0 ./"
end
```

What I end up with is my running observr container makes a system call to the host docker daemon. This command is executed (somewhat, see below) as if it was called from the host itself.

## Security
I can't stress enough that this is a security hole if used improperly (but then again, what isn't)

### gotchas
-   In the example above you'll notice that I have an absolute path in the `obsevr.rb` script. This is because so far I'm unable to use `$(pwd)`. This get interpreted on the observr container resulting in the wrong path somehow
