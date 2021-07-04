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
    sentence_array = self.split(" ")
    #binding.pry
    #counter = sentence_array.map {|word| word.question? | word.sentence? | word.exclamation?}
    #counter.count(true)
    sentence_array.keep_if{|word| word.question? | word.sentence? | word.exclamation?}
    return sentence_array.length
  end
end
