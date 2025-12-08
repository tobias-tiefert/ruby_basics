dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
  output = Hash.new
  dictionary.each do |word|
    if string.include?(word)
      output[word] = 1
      new_string = string.slice(string.index(word)+word.length..string.length)
      while new_string.include?(word) do
          output[word] += 1
          new_string = new_string.slice(new_string.index(word)+word.length..new_string.length)
      end
    end
  end 
  output
end