# Path to your oh-my-zsh installation.
export ZSH=/$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="agnoster"

# Hides user@hostname at beginning of zsh prompt
export USER=``

# Export editor variable for tmuxinator
export EDITOR="vim"

alias fw="cd ~/Flywheel/flywheel-app"
alias fwcompare="~/dotfiles/fwcompare.sh"

# User configuration

# Use ripgrep with fzf for vim
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# Configure fzf display in vim
export FZF_DEFAULT_OPTS='--height 96% --reverse --preview "cat {}"'

# Currently using rvm for ruby, and it wants to be the first path
export PATH="$HOME/.rvm/bin:$PATH"

#export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
#export PATH="$HOME/.bin:$PATH"
#export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# Hook asdf into shell
# Currently using asdf for node
source $HOME/.asdf/asdf.sh

# Hook direnv into shell
eval "$(direnv hook zsh)"

# Suppess Direnv feedback
export DIRENV_LOG_FORMAT=

# Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Reset github token specifically for gh cli
gh() {
  GITHUB_TOKEN= command gh "$@"
}
