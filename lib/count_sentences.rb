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
    arr = self.split(/[.!?]/)

    arr = arr.delete_if do |str|
      str == ""
    end

    arr.length
  end
end

# binding.pry
0
