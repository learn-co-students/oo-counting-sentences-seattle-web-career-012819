require 'pry'

class String

  def sentence?
    self.end_with? "."
  end

  def question?
    self.end_with? "?"
  end

  def exclamation?
    self.end_with? "!"
  end

  def count_sentences
    sentences = self.split(" ")


    sentences.keep_if {|word| word.sentence? | word.question? | word.exclamation?}
    # we want to keep all true items in the sentences array and remove the false items
    # keep word if it ends with a period, or a question mark, or a exclamation point
    sentences.length
  end
end
