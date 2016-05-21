export EDITOR=vim
export LANG="en_US.UTF-8"
export PATH="./bin:$PATH"

source ~/.zalias

# load up a secrets file if we have one
if [ -e ~/.secrets ]; then
  source ~/.secrets
fi
