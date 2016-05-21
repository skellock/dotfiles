# environment variables
export EDITOR=vim
export LANG="en_US.UTF-8"

# path
export PATH="./bin:$PATH"

# hookup the aliases
source ~/.zalias

# secrets file
if [ -e ~/.secrets ]; then
  source ~/.secrets
fi

# custom prompt -- i like https://github.com/sindresorhus/pure
autoload -U promptinit && promptinit
prompt pure
