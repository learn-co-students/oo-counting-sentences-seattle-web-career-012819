require 'pry'

class String

  def sentence?
    # Conditionally return that there are #chars in #self and they end in "."
    !!(self.chars.length && self.chars[-1]==".")
  end

  def question?
    # Conditionally return that there are #chars in #self and they end in "?"
    !!(self.chars.length && self.chars[-1]=="?")
  end

  def exclamation?
    # Conditionally return that there are #chars in #self and they end in "!"
    !!(self.chars.length && self.chars[-1]=="!")
  end

  def count_sentences
    # RegEx for the win!
    self.split(/[.?!][" "]{1,}/).count
  end

end