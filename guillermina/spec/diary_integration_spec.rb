require "diary"
require "diary_entry"

RSpec.describe "Diary integration tests" do
  it "when given an entry" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("my title", "my content")
    diary.add(diary_entry) 
    expect(diary.read).to eq [diary_entry]
  end
 
end