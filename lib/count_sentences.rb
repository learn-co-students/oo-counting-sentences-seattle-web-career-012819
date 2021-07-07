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
    sentence_array = self.split(/[!.?] /)
    #the above avoids multi-punctuation errors by only seperating by "punctuation plus space"
    sentence_array.count
  end

end
