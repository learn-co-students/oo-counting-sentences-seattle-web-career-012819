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
    words1 = self.split(".")
    words2 = words1.map do |element|
      element.split("?")
    end
    words3 = words2.flatten.map do
      |element| element.split("!")
    end
    binding.pry
    words3.flatten.reject(&:empty?).count
  end
end
