require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    spaghetti = self.split(" ")
    spaghetti.keep_if do |word|
      word.sentence? | word.question? | word.exclamation?
    end
    spaghetti.length
  end
end