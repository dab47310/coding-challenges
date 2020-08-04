def substrings(string, array)
  array = array.map{|item| item.downcase}
  string = string.downcase
  matches = {}

  array.each do |word|
    if string.include?(word)
      hash[word] = string.scan(word).count
    end
  end
  matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

