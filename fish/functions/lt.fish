function lt --description 'Lists all files in a tree.'
  exa -hlmg --color-scale --group-directories-first --git -T -L 3 -I node_modules $argv
end

