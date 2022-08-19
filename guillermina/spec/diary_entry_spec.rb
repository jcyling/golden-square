require "diary_entry"

RSpec.describe DiaryEntry do
  it "given empty content" do
    expect{ DiaryEntry.new("title", "") }.to raise_error "Not enough information"
  end
end