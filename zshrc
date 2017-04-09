# environment variables
export EDITOR='nvim'
export VISUAL="$EDITOR"
export GIT_EDITOR="$EDITOR"
export PAGER='less'
export LANG="en_US.UTF-8"
export ANDROID_HOME="$HOME/Library/Android/sdk"

# path
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$HOME/go/bin"

# install antigen
source $HOME/dotfiles/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# hookup the aliases
source ~/.zalias

# secrets file
if [ -e ~/.secrets ]; then
  source ~/.secrets
fi

# Key binds
bindkey -v
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# chruby
source /usr/local/share/chruby/chruby.sh
chruby 2.3.1
export PATH="/usr/local/sbin:$PATH"

# rust
source $HOME/.cargo/env

# z
source $HOME/dotfiles/bin/z.sh

# tell antigen we are done
antigen apply


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
