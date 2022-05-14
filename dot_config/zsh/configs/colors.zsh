export CLICOLOR=1       # enable colored output from ls, etc. on FreeBSD-based systems

if [ -x /usr/bin/dircolors ]; then
    export GREP_COLOR='1;32'
    LS_COLORS_AUDIO="38;5;218"
    LS_COLORS_VIDEO="38;5;216"
    LS_COLORS_ARCHIVE="38;5;204"
    LS_COLORS_IMAGES="38;5;147"
    LS_COLORS_DOCS="38;5;121"
    export LS_COLORS="di=1;33:cd=38;5;225:or=30;48;5;202:ow=38;5;75:so=38;5;177:su=36;48;5;63:ex=38;5;156:mi=38;5;115:\
*.tar=${LS_COLORS_ARCHIVE}:*.tgz=${LS_COLORS_ARCHIVE}:*.tbz2=${LS_COLORS_ARCHIVE}:*.zip=${LS_COLORS_ARCHIVE}:\
*.7z=${LS_COLORS_ARCHIVE}:*.gz=${LS_COLORS_ARCHIVE}:*.bz2=${LS_COLORS_ARCHIVE}:*.rar=${LS_COLORS_ARCHIVE}:\
*.jpg=${LS_COLORS_IMAGES}:*.jpeg=${LS_COLORS_IMAGES}:*.png=${LS_COLORS_IMAGES}:\
*.mpg=${LS_COLORS_VIDEO}:*.avi=${LS_COLORS_VIDEO}:*.mov=${LS_COLORS_VIDEO}:*.wmv=${LS_COLORS_VIDEO}:*.mp4=${LS_COLORS_VIDEO}:*.mkv=${LS_COLORS_VIDEO}:\
*.flac=${LS_COLORS_AUDIO}:*.mp3=${LS_COLORS_AUDIO}:\
*.conf=${LS_COLORS_DOCS}:*.ini=${LS_COLORS_DOCS}:*.txt=${LS_COLORS_DOCS}:*.yml=${LS_COLORS_DOCS}:*yaml=${LS_COLORS_DOCS}:*.md=${LS_COLORS_DOCS}:\
*.exe=38;5;156:*.bat=38;5;156:*.rpm=38;5;173:*.deb=38;5;173:*.dmg=38;5;173:*.iso=38;5;205:\
*README=38;5;224"

#     export LS_COLORS='no=00:fi=00:di=01;33:ln=01;36:pi=33:so=01;35:bd=33;01:cd=33;01:or=01;05;37;41:mi=01;37;41:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:'
    export LSCOLORS='ExGxFxdxCxDxDxcxcxxCxc'
fi
