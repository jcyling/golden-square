class Diary
  def initialize
    @diary_entries = []
  end

  def read
    # returns list of entries
    return @diary_entries
  end

  def add(diary_entry) # an instance of diary entry
    # adds to list of entries
    @diary_entries << diary_entry
  end

  def select_entry(wpm, minutes) # integers
    # returns the longest entry they can read within that time
  end
end