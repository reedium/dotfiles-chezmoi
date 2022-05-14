yubiencrypt () {
    default=~/"${1}".$(date +%s).enc
    output="${2:-$default}"
    gpg --encrypt --armor --output ${output} -r "${KEYID}" "${1}" && echo "${1} -> ${output}"
}

yubidecrypt () {
    # Must use full path for some reason
    default=$(echo "${1}" | rev | cut -c16- | rev)
    output="${2:-$default}"
    gpg --decrypt --output "${output}" "${1}" && echo "${1} -> ${output}"
}
