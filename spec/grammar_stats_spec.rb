require "grammar_stats"

RSpec.describe GrammarStats do
  context "nil input" do
    it "fails" do
      expect{ grammar_check(nil) }.to raise_error "Nil input."
    end
  end
  
  it "return true for grammatically correct string" do
    checker = GrammarStats.new
    result = checker.check("Hello world.")
    expect(result).to eq true
  end

  it "return false for no capitalization" do
    checker = GrammarStats.new
    result = checker.check("hello world.")
    expect(result).to eq false
  end

  it "return false for no ending punctuation" do
    checker = GrammarStats.new
    result = checker.check("Hello world")
    expect(result).to eq false
  end

  it "returns percentage of passed texts so far" do
    checker = GrammarStats.new
    checker.check("hello world.")
    checker.check("Hello world.")
    result = checker.percentage_good
    expect(result).to eq 50
  end

  it "returns percentage of passed texts so far" do
    checker = GrammarStats.new
    checker.check("hello world.")
    checker.check("Hello world.")
    checker.check("Hello world.")
    checker.check("Hello world.")
    result = checker.percentage_good
    expect(result).to eq 75
  end
end