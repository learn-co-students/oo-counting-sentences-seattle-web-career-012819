require 'pry'

class String

  def sentence?
    if self.end_with? '.'
      true
    else
      false
    end
  end

  def question?
    if self.end_with? '?'
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with? '!'
      true
    else
      false
    end
  end

  def count_sentences
    array = self.split(/\.|\?|\!/)
    new_array = []
    array.each do |item|
      if item != ""
        new_array.push(item)
      end
    end
    new_array.length
  end
end
