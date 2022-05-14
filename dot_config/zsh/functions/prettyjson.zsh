prettyjson_s() {
    echo "$1" | python -m json.tool
}

prettyjson() {
    python3 -m json.tool "$1"
}
