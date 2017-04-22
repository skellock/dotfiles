function fish_right_prompt
  if test $CMD_DURATION
    # Show duration of the last command in seconds
    set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.3fs", $1 / $2}')
    set_color -d blue
    printf $duration
    set_color normal
  end
end

