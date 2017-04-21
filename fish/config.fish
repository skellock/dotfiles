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

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'no'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
# set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_color_branch -o black
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stagedstate '>'
set __fish_git_prompt_char_untrackedfiles '?'
set __fish_git_prompt_char_stashstate '<'
set __fish_git_prompt_char_upstream_ahead '⇡'
set __fish_git_prompt_char_upstream_behind '⇣'
set __fish_git_prompt_char_upstream_equal ''

function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '\n%s' (prompt_pwd)
  set_color normal

  printf '%s' (__fish_git_prompt)
  set_color -o black
  printf '\n❯ '

  set_color normal
end

# Git Abbreviations
abbr -a ga git add
abbr -a gb git branch
abbr -a gbc git checkout -b
abbr -a gcb git checkout -b
abbr -a gcam git commit -a -m
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gpl git pull
abbr -a gplr git pull --rebase
abbr -a gup git pull --rebase
abbr -a gp git push
abbr -a gpoh git push -u origin HEAD
abbr -a gpristine git reset --hard; git clean -dfx
abbr -a gs git status -s
