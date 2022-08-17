require "todo"

RSpec.describe "To do method" do
  context "nothing is given to the method" do
    it "returns an error" do
      expect{ todo(nil) }.to raise_error "Please input the list."
    end
  end

  it "returns false if given empty string" do
    expect(todo("")).to eq false
  end

  it "returns false if there is no task" do
    expect(todo("hello world")).to eq false
  end

  it "returns true if there is a task" do
    expect(todo("#TODO buy coffee")).to eq true
  end

  it "returns true if there is a task" do
    expect(todo("#TO-DO buy coffee")).to eq false
  end

  it "returns true if there is a task" do
    expect(todo("#todo buy coffee")).to eq true
  end

  it "returns true if there is a task" do
    expect(todo("buy coffee #TODO")).to eq true
  end

end