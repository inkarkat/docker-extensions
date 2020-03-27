# Docker CLI extensions

These are some personal aliases, shortcuts, and extensions that make (my) work with the [docker containerization command-line interface](https://www.docker.com/) easier and faster. Some of them may be specific to my environment and workflow, but maybe someone finds a valuable nugget in there.

### Installation

Download all / some selected extensions (note that some have dependencies, though) and put them somewhere in your `PATH`. You can then invoke them via `docker-SUBCOMMAND`.

It is recommended to also use the (Bash, but should also work in Korn shell and Dash) shell functions (e.g. in your `.bashrc`) found at [shell/wrappers.sh](shell/wrappers.sh) to transparently invoke the extensions in the same way as the built-in Docker commands, via `docker SUBCOMMAND`.
