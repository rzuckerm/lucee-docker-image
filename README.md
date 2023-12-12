[![Makefile CI](https://github.com/rzuckerm/lucee-docker-image/actions/workflows/makefile.yml/badge.svg)](https://github.com/rzuckerm/lucee-docker-image/actions/workflows/makefile.yml)

# lucee-docker-image

Docker image for [Lucee programming language](https://docs.lucee.org/):

- rzuckerm/lucee:`<version>-<tag>`

where:

- `<version>` is the [Lucee version](LUCEE_VERSION)
- `<tag>` is the current GitHub tag without the "v"

The docker image can be found [here](https://hub.docker.com/r/rzuckerm/lucee).

Run the Lucee program:

```
run_lucee <program_name> <args>
```

where:

- `<program_name>` is the name of the program 
- `<args>` are the program arguments (if any)

Their will make a request to `http://localhost:8888/<program_name>` with the
following parameters:

- `argc` is the number of program arguments.
- `argv<n>` is the nth program argument. The value is URI encoded.

The Lucee program is expected to output text wrapped in a `<pre>` tag. For example,
the [Hello World](hello_world.cfm) outputs `<pre>Hello, world!</pre>`, and the
request is `http://localhost:8888/hello_world.cfm?argc=0`.
