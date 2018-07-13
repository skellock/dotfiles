set -x EDITOR "nvim"
set -x VISUAL $EDITOR
set -x GIT_EDITOR $EDITOR
set -x PAGER "less"
set -x LANG "en_US.UTF-8"
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x FASTLANE_USER steve@kellock.ca

# path
set -x PATH \
  ./bin \
  $HOME/.nimble/bin \
  $HOME/bin \
  $PATH \
  /usr/local/sbin

if test -e $ANDROID_HOME/platform-tools
  set -x PATH $PATH $ANDROID_HOME/platform-tools
end

if test -e $HOME/go/bin
  set -x PATH $PATH $HOME/go/bin
end

if test -e $HOME/.opam/system/bin
  set -x PATH $PATH $HOME/.opam/system/bin
end

# add flutter to the path
if test -e "~/src/forks/flutter/bin"
  set -x PATH \
    $PATH \
    $HOME/src/forks/flutter/bin
end

# ruby support
if test -e "/usr/local/share/chruby/chruby.fish"
  source /usr/local/share/chruby/chruby.fish
  chruby 2.4
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
abbr be "bundle exec"
abbr bef "bundle exec fastlane"
abbr fs "forego start"

# just
abbr j "just"

# prompts
source ~/.config/fish/functions/fish_prompt.fish
source ~/.config/fish/functions/rprompt.fish

# swift support
if which swiftenv > /dev/null; status --is-interactive; and source (swiftenv init -|psub); end

# reason support
# . /Users/steve/.opam/opam-init/init.fish > /dev/null 2> /dev/null or true
# set -gx PATH "/Users/steve/.opam/system/bin" "$PATH";
set -gx OCAML_TOPLEVEL_PATH "/Users/steve/.opam/system/lib/toplevel";
set -gx PERL5LIB "/Users/steve/.opam/system/lib/perl5:$PERL5LIB";
set -gx MANPATH "$MANPATH" "/Users/steve/.opam/system/man";
set -gx OPAMUTF8MSGS "1";
set -gx CAML_LD_LIBRARY_PATH "/Users/steve/.opam/system/lib/stublibs:/usr/local/lib/ocaml/stublibs";

# crystal support
if test -e "/usr/local/opt/openssl/lib/pkgconfig"
  set -U -x PKG_CONFIG_PATH /usr/local/opt/openssl/lib/pkgconfig
end

# secrets
if test -e "$HOME/.secrets"
  source $HOME/.secrets
end


# fzf
if test -e "$HOME/.fzf/shell/key-bindings.fish"
  source $HOME/.fzf/shell/key-bindings.fish
end

