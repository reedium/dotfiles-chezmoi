```
      _       _    __ _ _           
     | |     | |  / _(_) |          
   __| | ___ | |_| |_ _| | ___  ___ 
  / _` |/ _ \| __|  _| | |/ _ \/ __|
 | (_| | (_) | |_| | | | |  __/\__ \
  \__,_|\___/ \__|_| |_|_|\___||___/
```

## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Overview](#overview)
* [Chezmoi TLDR](#chezmoi-tldr)
* [Configs and Applications](#configs-and-applications)
* [Requirements](#requirements)
* [Optional Requirements](#optional-requirements)
* [Chezmoi Configuration File (Optional)](#chezmoi-configuration-file-optional)
* [Initial Setup](#initial-setup)
* [Special Notes](#special-notes)
    * [Mozilla Firefox](#mozilla-firefox)
    * [Tmux](#tmux)

<!-- vim-markdown-toc -->

# Overview

These are my dotfiles for various systems which are managed using [chezmoi](https://www.chezmoi.io/)

This includes custom profiles for various machines


# Chezmoi TLDR

```
chezmoi init <repo>
chezmoi apply -n    # Apply changes to ~ (Dry run)
chezmoi archive     # Create an archive of the dotfiles
chezmoi cd          # cd to chosmoi source path
chezmoi merge       # Merge changes made to local copy with chezmoi managed
chezmoi update      # Pull latest version from git and apply changes

chezmoi add ~/.my_file      # Manage new file
chezmoi forget ~/.my_file   # Stop managing a file
chezmoi managed             # View managed files
```


# Configs and Applications

Check out the README's of the various apps for shortcuts, plugin info, etc:

* [Tmux](dot_config/tmux/README.md)
* [Vim](dot_config/vim/README.md)
* [ZSH](dot_config/zsh/README.md)


# Requirements

| Application | Min Version |
| ----------- | ----------- |
| Chezmoi     | 2.3         |
| Tmux        | 3.3         |
| Vim         | 8.2         |
| zsh         | 5.8         |

The above are only the versions that each package was last known working with. It's likely most would work on earlier versions.

# Optional Requirements

See the configuration file for enabling

| Application | Min Version | Notes |
| ----------- | ----------- | ----- |
| Firefox     | ???         | Configures more secure and private `profile.js` settings |
| Code - OSS  | ???         | Sets various extension settings, including activating the [One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme) color theme and [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) |


# Chezmoi Configuration File (Optional)

Create the chezmoi configuration at `~/.config/chezmoi/chezmoi.toml`:

```
[data]
    hostname_color = "blue"

[data.firefox]
    enabled = true
    bookmarks = "/home/user/bookmarks.html"

[data.fonts]
    enabled = true

[data.git]
    email = "git@email.com"
    name = "My User"
    ssl_verify = false

[data.code] # Code OSS (VSCode alternative)
    enabled = true
```


# Initial Setup

Chezmoi does not support submodules. However, submodules are how we want to handle this rather than having to use the chezmoi configuration

```
sh -c "$(curl -fsLS git.io/chezmoi)"
chezmoi init <repo>
chezmoi apply -v -n         # Remove -n to actually apply
```


# Special Notes

## Mozilla Firefox

I utilize various [user.js](private_dot_mozilla/private_firefox/private_personal-profile.default/user.js.tmpl) and [userChrome.css](private_dot_mozilla/private_firefox/private_personal-profile.default/chrome/userChrome.css) tweaks. These are setup within `~/.mozilla/firefox/personal-profile.default/`.

Because of how firefox creates profile directories with randomish names, the best method is to:

1. **Make Sure Firefox is Closed**
2. Rename your current profile to `personal-profile.default`
3. Symlink `personal-profile.default` to your original directory's name

For example:

```
mv ~/.mozilla/firefox/yyaabb123.default ~/.mozilla/firefox/personal-profile.default
ln -s ~/.mozilla/firefox/personal-profile.default ~/.mozilla/firefox/yyaabb123.default
```

Renaming the profile (`firefox -p`), renaming the directory, and modifying `profiles.ini` isn't enough either. You would need to check the profile directory for any files where the path is hardcoded.

Unfortunately, it can't be automated with Chezmoi. Chezmoi can NOT add files to the symlink directory. It will delete the symlink and create just the directory needed.

The above implementation seems to get around these issues.


## Tmux

* Default Prefix: `ctrl + a` or `ctrl + b`

On first install, it may be necessary to run the following to download the plugins and reload tmux:

```
<prefix>I
```
