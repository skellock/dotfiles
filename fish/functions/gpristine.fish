function gpristine --description 'restores to what is in git'
  git reset --hard && git clean -dfx
end
