#!/bin/sh source-this-script

# Allow definition of Docker aliases by putting an executable "docker-foo"
# somewhere in the PATH.
docker()
{
    typeset dockerAlias="docker-$1"
    if [ $# -eq 0 ]; then
	docker ${DOCKER_DEFAULT_COMMAND:-ps}
    elif type ${BASH_VERSION:+-t} "$dockerAlias" >/dev/null 2>&1; then
	shift
	$dockerAlias "$@"
    else
	command docker "$@"
    fi
}
