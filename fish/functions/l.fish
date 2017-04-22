function l --description 'Lists all files.'
  exa -hlmg --color-scale --group-directories-first --git $argv
end

