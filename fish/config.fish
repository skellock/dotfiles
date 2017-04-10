set -x EDITOR "nvim"
set -x VISUAL $EDITOR
set -x GIT_EDITOR $EDITOR
set -x PAGER "less"
set -x LANG "en_US.UTF-8"
set -x ANDROID_HOME $HOME/Library/Android/sdk

# path
set -x PATH \
  $HOME/bin \
  $PATH \
  $ANDROID_HOME/platform-tools \
  $HOME/go/bin \
  /usr/local/sbin

source /usr/local/share/chruby/chruby.fish
chruby 2.4
#source $HOME/.cargo/env
