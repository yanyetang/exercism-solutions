main () {
    local series="$1"
    local n="$2"
    local series_length=${#series}

    if [[ -z "$n" ]]; then
        echo "slice length cannot be empty"
        return 1
    fi

    if [[ -z "$series" ]]; then
        echo "series cannot be empty"
        return 1
    fi

    if (( n < 0 )); then
        echo "slice length cannot be negative"
        return 1
    fi

    if (( n == 0 )); then
        echo "slice length cannot be zero"
        return 1
    fi

    if (( n > series_length )); then
        echo "slice length cannot be greater than series length"
        return 1
    fi


    slices=()
    for (( i = 0; i <= series_length - n; i++ )); do
        slices+=("${series:i:n}")
    done
    echo "${slices[*]}"
}

main "$@"
