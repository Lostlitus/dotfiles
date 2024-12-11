# Enable tmux-256color.
# Before macOS 14, tmux-256color is not shipped, so we need to build it from
# source.  Check details in
# https://gpanders.com/blog/the-definitive-guide-to-using-tmux-256color-on-macos
# export TERMINFO_DIRS=$TERMINFO_DIRS:$HOME/.local/share/terminfo
export TERM=tmux-256color

# Enable true color. Now terminal that support it is much pretty.
export COLORTERM=truecolor

# Set encoding to utf-8.
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set zsh's prompt form.
PROMPT='%B%F{198}%~ %#%f%b '
RPROMPT='%B%F{#50fa7b} <<<%f%b'

# Set proxy in cli.
export https_proxy=http://localhost:7899
export http_proxy=http://localhost:7899
export all_proxy=socks5://localhost:7899

# Enable X11 forward. (for clipboard synchronize from remote here)
# export DISPLAY="ip:0.0"

# Improve zsh history behaviour. (zsh's origin one)
# setopt HIST_IGNORE_DUPS
# setopt HIST_IGNORE_SPACE
# setopt SHARE_HISTORY
