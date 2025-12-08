dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
  output = Hash.new
  dictionary.each do |word|
    if string.include?(word)
      output[word] = 1
      sub_string = string.slice(string.index(word)+word.length..string.length)
      while sub_string.include?(word) do
          output[word] += 1
          sub_string = sub_string.slice(sub_string.index(word)+word.length..sub_string.length)
      end
    end
  end 
  output
end