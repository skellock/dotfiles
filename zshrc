# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# environment variables
export EDITOR='vim'
export PAGER='less'
export VISUAL='vim'
export LANG="en_US.UTF-8"
export ANDROID_HOME='/Users/steve/Library/Android/sdk'

# path
export PATH="/Users/steve/bin:$PATH:$ANDROID_HOME/platform-tools"

# hookup the aliases
source ~/.zalias

# secrets file
if [ -e ~/.secrets ]; then
  source ~/.secrets
fi

# custom prompt -- i like https://github.com/sindresorhus/pure
autoload -U promptinit && promptinit
prompt pure

# Fuzzy File Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Key binds
bindkey -v
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# chruby
source /usr/local/share/chruby/chruby.sh
chruby 2.3.1
