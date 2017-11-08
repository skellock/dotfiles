set -x EDITOR "nvim"
set -x VISUAL $EDITOR
set -x GIT_EDITOR $EDITOR
set -x PAGER "less"
set -x LANG "en_US.UTF-8"
set -x ANDROID_HOME $HOME/Library/Android/sdk

# path
set -x PATH \
  $HOME/src/forks/flutter/bin \
  $HOME/bin \
  $PATH \
  $ANDROID_HOME/platform-tools \
  $HOME/go/bin \
  /usr/local/sbin

source /usr/local/share/chruby/chruby.fish
chruby 2.4
#source $HOME/.cargo/env

# Git Abbreviations
abbr ga "git add"
abbr gb "git branch"
abbr gbc "git checkout -b"
abbr gcb "git checkout -b"
# abbr gcam "git commit -a -m \""
abbr grs "git reset"
abbr gco "git checkout"
abbr gcom "git checkout master"
abbr gd "git diff"
abbr gdc "git diff --cached"
abbr gpl "git pull"
abbr gplr "git pull --rebase"
abbr gup "git pull --rebase"
abbr gp "git push"
abbr gpoh "git push -u origin HEAD"
abbr gpristine "git reset --hard; git clean -dfx"
abbr gs "git status -s"

abbr mr "marathon run"

abbr be "bundle exec"
abbr bef "bundle exec fastlane"

# android
abbr ssa "adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > android-screenshot.png"

# prompts
source ~/.config/fish/functions/fish_prompt.fish
source ~/.config/fish/functions/rprompt.fish

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.fish ]; and . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.fish

if which swiftenv > /dev/null; status --is-interactive; and source (swiftenv init -|psub); end
