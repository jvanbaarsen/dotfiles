# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew git-extras)

source $ZSH/oh-my-zsh.sh
source $HOME/dotfiles/zsh/aliases
source $HOME/dotfiles/zsh/functions

# Customize to your needs...
export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/lib::/usr/local/php5/bin
export PATH=$HOME/Qt5.5.1/5.5/clang_64/bin:$PATH

eval "$(hub alias -s)"

# We need to export this, for normal UTF-8 support -_-
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
eval "$(direnv hook zsh)"
export EDITOR=vim
eval "$(rbenv init - zsh)"

export PATH=".git/safe/../../bin:$PATH"
export PATH=$HOME/dotfiles/bin:$PATH

source $HOME/dotfiles/zsh/prompt

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Always work in a tmux session if tmux is installed
# ensure_tmux_is_running

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -i --hidden --path-to-ignore ~/.ignore --no-color -g ""'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# export BAT_THEME="Monokai Extended Light"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/jeroen/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
