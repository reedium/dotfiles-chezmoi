# ZSH

## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Keybindings](#keybindings)
* [Aliases](#aliases)
* [Functions](#functions)
* [Customizations - ~/.zshrc.local](#customizations---zshrclocal)
    * [Useful Examples](#useful-examples)

<!-- vim-markdown-toc -->

## Keybindings

| Keybinding           | Description                                                                     |
| -------------------- | ------------------------------------------------------------------------------- |
| `<UP|DOWN>`          | Autocompletes previous entries (e.g. `echo<UP>` returns previous echo commands) |
| `<CTRL><LEFT|RIGHT>` | Move forward/backward per word                                                  |
| `<ALT><.>`           | Last argument of previous command                                               |


## Aliases

| Alias                             | Command                                          | Description                                                                       |
| --------------------------------- | ------------------------------------------------ | --------------------------------------------------------------------------------- |
| `<cp,ln,mv> <args>`               | `<cp,ln,mv> -i <args>`                           | Require confirmation when overwriting                                             |
| `ch<grp,mod,own> <args>`          | `ch<grp,mod,own> --preserve-root <args>`         | Don't allow modifying /                                                           |
| `ff`                              | `find . -name $1`                                | Quick find with ff and the pattern                                                |
| `gitlog`                          |                                                  | Provide an easy method for view git commit logs                                   |
| `grep <args>`                     | `grep --color=always`                            | Ensure color is enabled                                                           |
| `mkdir <args>`                    | `mkdir -p <args>`                                | Always create the full path if it doesn't exit                                    |
| `mountt`                          | `mount [pipe] columnt -t`                        | Better display of mount, with columns                                             |
| `ports`                           | `netstat -tulanp`                                | Provide a list of open ports                                                      |
| `rm <args>`                       | `rm -I --preserve-root <args>`                   | Don't allow removing / and require confirmation when deleting more then 3 files   |
| `tmux`                            | `tmux -2`                                        | Forcing 256 color mode for tmux                                                   |
| `prettyjson <file>`               | `python -m json.tool <file>`                     | Pretty printing of json                                                           |

## Functions

| Function       | Example                                | Description                                                                  |
| -------------- | -------------------------------------- | ---------------------------------------------------------------------------- |
| `calc`         | `calc "3*3"`                           | Run a quick calculation                                                      |
| `curl_json`    | `curl_json https://something.com/json` | Download and prettyprint JSON                                                |
| `extract`      | `extract archive.zip`                  | Extract various types of archives (tgz, zip, etc)                            |
| `fix`          | `fix`                                  | Fix the current terminal after cating a binary file                          |
| `man`          | `man <command>`                        | Set colors for man                                                           |
| `mktmpdir`     | `mktmpdir [name]`                      | Uses mktmp to make a dir and cd into (add name for /tmp/<name>.XXXXXXX name) |
| `prettyjson`   | `prettyjson <filepath>`                | Pretty print json file                                                       |
| `prettyjson_s` | `prettyjson "<json_string>"`           | Pretty print json string                                                     |
| `server`       | `server [port]`                        | Start a simple http server in the current dir (optional port)                |
| `systemload`   | `systemload`                           | Display the current system load                                              |

## Customizations - ~/.zshrc.local

Source File: ~/.zshrc.local

| Variable                  | Default | Example                             | Description                                                          |
| ------------------------- | ------- | ----------------------------------- | -------------------------------------------------------------------- |
| LS_COLORS_THEME           | simple  | `export LS_COLORS_THEME='complex'`  | Allows multiple ls colors themes (only simple and complex currently) |
| PROMPT_POST               |         | `export PROMPT_POST=' :-)'`         | Adds some text or information after the ZSH shell prompt             |
| PROMPT_PRE                |         | `export PROMPT_PRE=':-) '`          | Adds some text or information before the ZSH shell prompt            |

### Useful Examples

The following will add a warning when you've dropped to shell from VIM. This makes it obvious when you should or shouldn't exit out, thinking you're in a VIM shell.

```
if [ ! -z "${VIMRUNTIME}" ]; then
    PROMPT_PRE="%F{yellow}[VIM SHELL] "
fi
```


The following allows for encrypting decrypting a file using yubikey
```
export KEYID=0x123A4E56789AB123

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
```
