# Path to your oh-my-zsh installation.
export ZSH=/Users/joshlawler/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="agnoster"

export USER=``

export EDITOR="vim"

alias fw="cd ~/Flywheel/flywheel-app"
alias fwcompare="~/dotfiles/fwcompare.sh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# User configuration

# Use ripgrep with fzf for vim
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# configure fzf display in vim
export FZF_DEFAULT_OPTS='--height 96% --reverse --preview "cat {}"'

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/joshlawler/.rvm/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="$HOME/.bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

eval "$(direnv hook zsh)"
source /Users/joshlawler/.asdf/asdf.sh

eval "$(direnv hook zsh)"

# Suppess Direnv feedback
export DIRENV_LOG_FORMAT=

source $ZSH/oh-my-zsh.sh

# Reset github token specifically for gh cli
gh() {
  GITHUB_TOKEN= command gh "$@"
}
