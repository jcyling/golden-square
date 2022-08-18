require 'diary_2'
require 'diary_entry'

describe "Diary Integration" do
  it "returns all diary entries" do
    diary = Diary.new
    entry_1 = DiaryEntry2.new("Day 1", "It was fun")
    diary.add(entry_1)
    binding.irb
    expect(diary.all).to eq [entry_1]
  end
end