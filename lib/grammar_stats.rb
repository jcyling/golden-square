class GrammarStats
  def initialize
    @correct = 0
    @incorrect = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    endings = ["!", "?", "."]
    if text.nil?
      fail "Nil input."
    else
      check = text[0].upcase == text[0] && endings.include?(text[-1])

      if check
        @correct += 1
      else
        @incorrect += 1
      end

      return check
    end

  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    @correct.to_f / (@correct + @incorrect) * 100
  end
end