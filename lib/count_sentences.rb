require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences #expect("one. two. three?".count_sentences).to eq(3)
    #return self.split('.' || '?' || '!').count
    return self.split(/[?!.]\s+/).length
    #binding.pry
  end
end

#complex_string = "This, well, is a sentence. // This is too! // ! // And so is this, I think? Woo..."