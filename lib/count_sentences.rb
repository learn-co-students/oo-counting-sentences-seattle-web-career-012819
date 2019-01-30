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
    puts self
    sentences = self.split(/\.+ |\?+ |\!+ /)
    puts sentences
    puts sentences.length
    sentences.length
  end
end