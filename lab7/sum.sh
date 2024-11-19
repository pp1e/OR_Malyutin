if ! [[ "$1" =~ ^-?[0-9]+$ ]] || ! [[ "$2" =~ ^-?[0-9]+$ ]]; then
    echo "args must be numbers"
    exit 1
fi

sum=$(( $1 + $2 ))

echo "$sum"

