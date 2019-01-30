require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
      self.end_with?("!") ? true : false
  end

  def count_sentences
    # Coulnt get it to work for the !! ........ so close
    # self.split(/[(!+).?-]/).length

    self.split.count{|word| word.sentence? || word.question? || word.exclamation?}
  end
end


"This, well, is a sentence. This is too!! And so is this, I think? Woo..."
