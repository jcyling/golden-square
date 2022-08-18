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
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
    total_words = 0;
    
    @entries.each do |entry|
      total_words += entry.count_words
    end

    return total_words
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.

    words = count_words
    (words.to_f / wpm).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.

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