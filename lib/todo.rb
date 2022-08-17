def todo(text)
  if text == nil
    fail "Please input the list."
  elsif text.include?("#TODO") || text.include?("#todo")
    return true
  else
    return false
  end
end