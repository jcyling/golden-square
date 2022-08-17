require "test-driving-single-class"

RSpec.describe DiaryEntry do
  it "returns title" do
    diary = DiaryEntry.new('Hello', 'Bobby') 
    result = diary.title
    expect(result).to eq "Hello"
  end

  it "returns content" do
    diary = DiaryEntry.new('Hello', 'Bobby') 
    result = diary.contents
    expect(result).to eq "Bobby"
  end

  it "returns number of words in the contents" do
    diary = DiaryEntry.new('Hello', 'Bobby') 
    result = diary.count_words
    expect(result).to eq 1
  end

  it "returns number of words in the contents" do
    diary = DiaryEntry.new('Hello', 'Bobby ' * 10) 
    result = diary.count_words
    expect(result).to eq 10
  end

  it "returns number of minutes to read contents" do
    diary = DiaryEntry.new('Hello', 'Bobby ' * 1000) 
    result = diary.reading_time(200)
    expect(result).to eq 5
  end 

  it "returns number of minutes to read contents" do
    diary = DiaryEntry.new('Hello', 'Bobby ' * 1000) 
    result = diary.reading_time(150)
    expect(result).to eq 7
  end 

  it "returns number of minutes to read contents" do
    diary = DiaryEntry.new('Hello', 'Bobby ' * 50) 
    result = diary.reading_time(150)
    expect(result).to eq 1
  end 

  it "returns reading chink for certain amount of time" do
    diary = DiaryEntry.new('Hello', 'Bobby ' * 1000) 
    result = diary.reading_chunk(150, 5)
    expect(result).to eq ("Bobby " * 750).chop
  end 

  it "returns the next reading chunk for certain amount of 
  time if it's called more than once" do
    diary = DiaryEntry.new('Hello', ('Bobby ' * 100) + "Jane " * 200) 
    diary.reading_chunk(20, 5)
    result = diary.reading_chunk(20, 5)
    expect(result).to eq ("Jane " * 100).chop
  end 

  it "returns the end of the diary antry if we have nothing else to read" do
    diary = DiaryEntry.new('Hello', ('Bobby ' * 150) + "Jane " * 200) 
    diary.reading_chunk(20, 10)
    result = diary.reading_chunk(20, 10)
    expect(result).to eq ("Jane " * 150).chop
  end 

  it "restarts from the beginning if we finish reading the diary" do
    diary = DiaryEntry.new('Hello', ('Bobby ' * 150) + "Jane " * 200) 
    diary.reading_chunk(20, 10)
    diary.reading_chunk(20, 10)
    result = diary.reading_chunk(20, 10)
    expect(result).to eq ('Bobby ' * 150 + 'Jane ' * 50).chop
  end 

end
