#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
# [ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export TERM="xterm-256color"

# Disable the freaking autocorrect
unsetopt correct_all

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# History saving
HISTSIZE=20000
HISTFILE=~/.tmp/.zsh_history
SAVEHIST=20000

# Disable flow control commands
stty start undef
stty stop undef

eval "$(/opt/homebrew/bin/brew shellenv)"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew git-extras tmux gh)

ZSH_TMUX_AUTOSTART=false
ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_AUTOQUIT=false

source $ZSH/oh-my-zsh.sh
source $HOME/dotfiles/zsh/aliases
source $HOME/dotfiles/zsh/functions

# Customize to your needs...
export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew:/usr/local/lib::/usr/local/php5/bin
export PATH=$HOME/Qt5.5.1/5.5/clang_64/bin:$PATH

export VIMCONFIG=$HOME/dotfiles/.vim

eval "$(hub alias -s)"

# We need to export this, for normal UTF-8 support -_-
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

### Added by the Heroku Toolbelt
export PATH="/opt/homebrew/heroku/bin:$PATH"
eval "$(direnv hook zsh)"
export EDITOR=nvim

export PATH=".git/safe/../../bin:$PATH"
export PATH=$HOME/dotfiles/bin:$PATH

source $HOME/dotfiles/zsh/prompt

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Always work in a tmux session if tmux is installed
# ensure_tmux_is_running

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -i --hidden --path-to-ignore ~/.ignore --no-color -g ""'

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# export BAT_THEME="Monokai Extended Light"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/jeroen/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
export PATH="/opt/homebrew/opt/mongodb-community@3.6/bin:$PATH"

# source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette_osx.sh"

eval "$(gh completion -s zsh)"

# Disable homebrew auto update
export HOMEBREW_NO_AUTO_UPDATE=1

# Increase ulimit to deal with projects with lots of files
ulimit -n 10000


#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
# [ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"
export PATH="$PATH:/Users/jeroen/.cargo/bin"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH=$(pyenv root)/shims:$PATH
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
eval "$(zellij setup --generate-auto-start zsh)"
