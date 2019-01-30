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
    new_sen = self.split(/\.|\?|\!|\!!|\.../)
    puts new_sen
    # binding.pry
    self.split(/\.|\?|\!|\!!|\.../).delete_if { |word| word.size < 1}.size
end

end
