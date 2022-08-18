require_relative './diary_entry'

class Diary2
  def initialize
    @entries = []
  end

  def add(entry) 
    @entries << entry 
  end

  def all
    @entries
  end

  def count_words
    total_words = 0;
    
    @entries.each do |entry|
      total_words += entry.count_words
    end

    return total_words
  end

  def reading_time(wpm) 

    words = count_words
    (words.to_f / wpm).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    max_words_to_read = wpm * minutes
    best_entry = @entries[0]

    @entries.each do |entry|
      total_words = entry.count_words
      if total_words > best_entry.count_words && total_words < max_words_to_read
        best_entry = entry
      end
    end

    return best_entry
  end
end