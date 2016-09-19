# Docker CLI extensions

These are some personal aliases, shortcuts, and extensions that make (my) work with the [docker containerization command-line interface](https://www.docker.com/) easier and faster. Some of them may be specific to my environment and workflow, but maybe someone finds a valuable nugget in there.

Use the following (Bash) shell function to invoke the extensions in the same way as the built-in docker commands, via `docker SUBCOMMAND`:

    docker() {
        typeset -r dockerAlias="docker-$1"
        if [ $# -eq 0 ]; then
            docker ${DOCKER_DEFAULT_COMMAND:-ps}
        elif type -t "$dockerAlias" >/dev/null; then
            shift
            "$dockerAlias" "$@"
        else
            "$(which docker)" "$@"
        fi
    }
