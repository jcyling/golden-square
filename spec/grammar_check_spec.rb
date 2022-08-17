require "grammar_check"

describe "grammar check" do
  it "returns true for a string starting with uppercase and ending with full stop" do
    result = grammar_check("Hello world.")
    expect(result).to eq true
  end

  it "returns false when no capital and ending with exclamation mark" do
    result = grammar_check("hello world!")
    expect(result).to eq false
  end

  context "nil input" do
    it "fails" do
      expect{ grammar_check(nil) }.to raise_error "Nil input."
    end
  end
end