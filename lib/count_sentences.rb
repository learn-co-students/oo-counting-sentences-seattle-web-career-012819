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

    arr = [self.split(/[.!?]/)].flatten!
    arr = arr.reject { |str| str.empty? }
    arr.length
  end
end
