def bouncing_balls(height, bounce, window_height)
  # prints result: how many times a person from window_height
  # will see ball pass in front of the window (including fall and bounce)
  if height.positive? && (0.01...1).include?(bounce) && window_height < height
    result = 0

    while height > window_height
      p "fall: #{height}"
      result += 1 # fall

      height *= bounce
      result += 1 if (height) > window_height # bounce
      p "bounce: #{height}"
    end

    result
  else
    -1
  end
end

p bouncing_balls(3, 0.66, 1.5) == 3
p bouncing_balls(4, 0.66, 1.5) == 5
p bouncing_balls(3, 1, 1.5) == -1
