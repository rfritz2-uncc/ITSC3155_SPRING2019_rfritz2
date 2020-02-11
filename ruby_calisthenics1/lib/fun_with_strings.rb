module FunWithStrings
  def palindrome?
    self.gsub(/[^a-zA-Z]/,'').downcase == self.gsub(/[^a-zA-z]/,'').downcase.reverse  end
  def count_words
    sentence = Hash.new
    self.gsub(/[^a-zA-z\s]/,'').downcase.split.each do |word|
      if sentence[word] != nil
        sentence[word]+=1
      else
        sentence[word]=1
      end 
    end
    sentence
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
