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
    array = self.split(" ")
    array.keep_if{|word| word.question? | word.exclamation? | word.sentence?}
    array.length
  end
end
