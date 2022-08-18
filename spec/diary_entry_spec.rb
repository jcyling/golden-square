require 'diary_entry'

describe DiaryEntry2 do
  it "returns title" do
    entry = DiaryEntry2.new("Day1", "Yay")
    expect(entry.title).to eq "Day1"
  end

  it "returns title" do
    entry = DiaryEntry2.new("Day1", "Yay")
    expect(entry.contents).to eq "Yay"
  end

  it "returns reading time" do
    entry = DiaryEntry2.new("Day1", "Yay I had a great day " * 10) #60
    expect(entry.reading_time(7)).to eq 9
  end

  it "returns chunk for reading time" do
    entry = DiaryEntry2.new("Day1", "Yay I had a great day, and tomorrow will be exciting")
    expect(entry.reading_chunk(2,2)).to eq "Yay I had a"
  end

  it "returns chunk for reading time starting from last read" do
    entry = DiaryEntry2.new("Day1", "Yay I had a great day, and tomorrow will be exciting")
    entry.reading_chunk(2,2)
    expect(entry.reading_chunk(2,2)).to eq "great day, and tomorrow"
  end

  it "returns chunk for reading time starting from last read" do
    entry = DiaryEntry2.new("Day1", "Yay I had a great day, and tomorrow will be exciting")
    entry.reading_chunk(2,2)
    entry.reading_chunk(2,2)
    entry.reading_chunk(2,2)
    expect(entry.reading_chunk(2,2)).to eq "Yay I had a"
  end 

end