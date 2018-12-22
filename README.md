# Docker CLI extensions

These are some personal aliases, shortcuts, and extensions that make (my) work with the [docker containerization command-line interface](https://www.docker.com/) easier and faster. Some of them may be specific to my environment and workflow, but maybe someone finds a valuable nugget in there.

### Installation

Download all / some selected extensions (note that some have dependencies, though) and put them somewhere in your `PATH`. You can then invoke them via `docker-SUBCOMMAND`.

Optionally, use the following (Bash, but should also work in Korn shell and Dash) shell function (e.g. in your `.bashrc`) to transparently invoke the extensions in the same way as the built-in docker commands, via `docker SUBCOMMAND`:

    docker() {
        typeset -r dockerAlias="docker-$1"
        if [ $# -eq 0 ]; then
            docker ${DOCKER_DEFAULT_COMMAND:-ps}
        elif type ${BASH_VERSION:+-t} "$dockerAlias" >/dev/null 2>&1; then
            shift
            eval $dockerAlias '"$@"'
        else
            command docker "$@"
        fi
    }
