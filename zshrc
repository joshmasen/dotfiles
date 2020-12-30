# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up Powerlevel10k for zsh theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# Set up zsh autocomplete
# https://github.com/marlonrichert/zsh-autocomplete
# cd into this directory and 'git pull' to update
source /usr/local/bin/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Export editor variable for tmuxinator
export EDITOR="vim"

alias fw="cd ~/Flywheel/flywheel-app"
alias fwcompare="~/bin/fwcompare.sh"

alias ls='ls -G'
alias ll='ls -G -al'
alias gs='git status'
alias gaa='git add . && gs'
alias gc='git commit -m "'
alias gpo='git push origin master'

# User configuration

# Use ripgrep with fzf for vim
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# Configure fzf display in vim
export FZF_DEFAULT_OPTS='--height 96% --reverse --preview "cat {}"'

# Currently using rvm for ruby, and it wants to be the first path
export PATH="$HOME/.rvm/bin:$PATH"

export PATH="$PATH:/usr/local/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.bin:$PATH"
#export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# Hook asdf into shell
# Currently using asdf for node
source $HOME/.asdf/asdf.sh

# Hook direnv into shell
eval "$(direnv hook zsh)"

# Suppess Direnv feedback
export DIRENV_LOG_FORMAT=

# Reset github token specifically for gh cli
gh() {
  GITHUB_TOKEN= command gh "$@"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
