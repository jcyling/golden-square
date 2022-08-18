require 'diary_2'
require 'diary_entry'

describe "Diary Integration" do
  it "returns all diary entries" do
    diary = Diary2.new
    entry_1 = DiaryEntry2.new("Day 1", "It was fun")
    diary.add(entry_1)
    expect(diary.all).to eq [entry_1]
  end

  it "returns word count of all entries" do
    diary = Diary2.new
    entry_1 = DiaryEntry2.new("Hello", "world it's me")
    entry_2 = DiaryEntry2.new("From", "the other side")
    diary.add(entry_1)
    diary.add(entry_2)
    result = diary.count_words
    expect(result).to eq 6
  end

  it "returns reading time" do
    diary = Diary2.new
    entry_1 = DiaryEntry2.new("Hello", "world " * 10)
    diary.add(entry_1)
    result = diary.reading_time(10)
    expect(result).to eq 1
  end

  it "returns reading time for uneven division" do
    diary = Diary2.new
    entry_1 = DiaryEntry2.new("Hello", "world " * 10)
    diary.add(entry_1)
    result = diary.reading_time(3)
    expect(result).to eq 4
  end

  it "returns best entry for reading time" do
    diary = Diary2.new
    entry_1 = DiaryEntry2.new("Hello", "world " * 10)
    entry_2 = DiaryEntry2.new("Hello", "bob " * 30)
    diary.add(entry_1)
    diary.add(entry_2)
    result = diary.find_best_entry_for_reading_time(10, 2)
    expect(result).to eq entry_1
  end
end