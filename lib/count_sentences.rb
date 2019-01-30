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
    words2 = words1.map { |element| element.split("?")}
    words3 = words2.flatten.map { |element| element.split("!")}
    words3.flatten.reject(&:empty?).count
  end
end
