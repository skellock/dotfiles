function gbda --description 'deletes all merged branches'
  git branch --no-color --merged | grep -vE "^(\*|\s*(master|develop|dev)\s*\$)" | xargs -n 1 git branch -d
end
