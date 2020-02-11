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
    words = self.split
    arr1 = Array.new
    
    words.each_with_index do |word, index|
      unless arr1.any? { |array| array.include?(word) }
        arr2 = Array.new
        arr2.push(word)
        words[index+1..-1].each do |word2|
          if word.downcase.chars.sort.join == word2.downcase.chars.sort.join
            arr2.push(word2)
          end
        end
        arr1.push(arr2)
      end
    end
    arr1
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
