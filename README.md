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
* [Chezmoi Configuration File (Optional)](#chezmoi-configuration-file-optional)
* [Initial Setup](#initial-setup)
* [Special Notes](#special-notes)
    * [Mozilla Firefox](#mozilla-firefox)

<!-- vim-markdown-toc -->

# Overview

These are my dotfiles for various systems which are managed using [chezmoi](https://www.chezmoi.io/)

This includes custom profiles for various machines


# Chezmoi TLDR

```
chezmoi init ssh://git@gitea.ryanreed.net:3001/ryanreed/dotfiles-chezmoi.git
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

* [Tmux](dot_tmux/README.md)
* [Vim](dot_vim/README.md)
* [ZSH](dot_zsh/README.md)


# Requirements

| Application | Min Version |
| ----------- | ----------- |
| Chezmoi     | 2.3         |
| Tmux        | 3.0         |
| Vim         | 8.2         |
| zsh         | 5.8         |

The above are only the versions that each package was last known working with. It's likely most would work on earlier versions.


# Chezmoi Configuration File (Optional)

Create the chezmoi configuration at `~/.config/chezmoi/chezmoi.toml`:

```
[data]
    hostname_color = "blue"

[data.firefox]
    enabled = true
    bookmarks = "/home/user/bookmarks.html"

[data.git]
    email = "git@email.com"
    name = "My User"
    ssl_verify = false

# The following is not currently in use
[keepassxc]
    database = "/home/user/database.kdbx"
```


# Initial Setup

Chezmoi does not support submodules. However, submodules are how we want to handle this rather than having to use the chezmoi configuration

```
sh -c "$(curl -fsLS git.io/chezmoi)"
chezmoi init ssh://git@gitea.ryanreed.net:3001/ryanreed/dotfiles-chezmoi.git
chezmoi apply -v -n         # Remove -n to actually apply
```


# Special Notes

## Mozilla Firefox

I utilize various [user.js](private_dot_mozilla/private_firefox/private_personal-profile.default/user.js.tmpl) and userChrome.css tweaks. These are setup within `~/.mozilla/firefox/personal-profile.default/`.

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
