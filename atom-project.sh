#! /usr/bin/env sh

main()
{
    if [ -z "${PROJECT_HOME}"]
    then
        PROJECT_HOME="${HOME}/projects/"
    fi

    local output=$(find "${PROJECT_HOME}"* -maxdepth 1 -type d | dmenu)

    cd "$output"
    atom .
}

main "$@"
