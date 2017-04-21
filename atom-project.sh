#! /usr/bin/env sh

main()
{
    local output=$(find "${HOME}/projects/"* -maxdepth 1 -type d | dmenu)

    cd "$output"
    atom .
}

main "$@"
