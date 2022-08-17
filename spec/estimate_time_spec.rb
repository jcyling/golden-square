require "estimate_time"

RSpec.describe "estimate reading time" do
  it "returns 1 for less than 200 words" do
    result = estimate_time("hello world")
    expect(result).to eq 1
  end

  it "fails when zero" do
    
  end
end 