set -x EDITOR vim
set -x VISUAL $EDITOR
set -x GIT_EDITOR $EDITOR
set -x PAGER "less"
set -x LANG "en_US.UTF-8"
set -x FASTLANE_USER steve@kellock.ca
set -x FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"

# path
set -x PATH \
  ./bin \
  $HOME/.nimble/bin \
  $HOME/bin \
  $PATH \
  /usr/local/sbin

# android 
set -x ANDROID_HOME $HOME/Library/Android/sdk
if test -e $ANDROID_HOME/platform-tools
  set -x PATH $PATH $ANDROID_HOME/platform-tools
end

if test -e $HOME/go/bin
  set -x PATH $PATH $HOME/go/bin
end

# add flutter to the path
if test -e $HOME/src/forks/flutter/bin
  set -x PATH $PATH $HOME/src/forks/flutter/bin
end

# ruby support
if test -e /usr/local/share/chruby/chruby.fish
  source /usr/local/share/chruby/chruby.fish
  chruby 2.7
end

# rust support
if test -e $HOME/.cargo/env
  source $HOME/.cargo/env
end

# Git Abbreviations
abbr ga "git add"
abbr gb "git branch"
abbr gbc "git checkout -b"
abbr gcb "git checkout -b"
abbr grs "git reset"
abbr gco "git checkout"
abbr gd "git diff"
abbr gdc "git diff --cached"
abbr gup "git pull --rebase"
abbr gp "git push"
abbr gpoh "git push -u origin HEAD"
abbr gpristine "git reset --hard; git clean -dfx"
abbr gs "git status -s"

# Git flow
abbr gffs "git flow feature start"
abbr gfff "git flow feature finish"
abbr gfbs "git flow bugfix start"
abbr gfbf "git flow bugfix finish"
abbr gfrs "git flow release start"
abbr gfrf "git flow release finish"
abbr gfl "git flow log"
abbr gf "git flow"

abbr be "bundle exec"
abbr bef "bundle exec fastlane"
abbr fs "forego start"

abbr j "just"

abbr tm "tmuxinator"
abbr tms "tmuxinator start"

# prompts
source ~/.config/fish/functions/fish_prompt.fish
source ~/.config/fish/functions/rprompt.fish

# swift support
if which swiftenv > /dev/null 2> /dev/null; status --is-interactive; and source (swiftenv init -|psub); end

# starship prompt support
if which starship > /dev/null 2> /dev/null; status --is-interactive; and eval (starship init fish); end

# secrets
if test -e "$HOME/.secrets"
  source $HOME/.secrets
end

# fzf
if test -e "$HOME/.fzf/shell/key-bindings.fish"
  source $HOME/.fzf/shell/key-bindings.fish
end

