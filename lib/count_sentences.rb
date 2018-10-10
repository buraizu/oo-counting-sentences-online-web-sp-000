require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    counter = 0
    array = self.split
    array.each do |element|
      if sentence?(element) || question?(element) || exclamation?(element)
        counter += 1
      end
    end
  end
end
