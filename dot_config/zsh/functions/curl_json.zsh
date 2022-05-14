function curl_json() {
    curl -s $1 | python -m json.tool
}
