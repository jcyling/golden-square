def estimate_time(text)
  word_count = text.split(" ").count
  return (word_count.to_f / 200).ceil
end