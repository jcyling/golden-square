class DiaryEntry2
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @bookmark = 0
  end

  attr_accessor :title, :contents

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm)
    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    read = @contents.split(" ")[@bookmark, wpm * minutes].join(" ")
    if @bookmark + wpm * minutes > count_words
      @bookmark = 0
    else   
      @bookmark += wpm * minutes
    end
    read
  end 

end