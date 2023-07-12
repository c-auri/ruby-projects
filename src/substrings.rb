def substrings(message, valid_substrings)
  message = message.downcase
  result = valid_substrings.reduce(Hash.new) do |result, substring|
    result[substring] = message.scan(substring.downcase).count if message.include? substring
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
pp substrings("below", dictionary)
pp substrings("Howdy partner, sit down! How's it going?", dictionary)