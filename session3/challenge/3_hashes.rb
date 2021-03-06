# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count (phrase)
    hash={}
    phrase.split(" ").each { |word| hash.has_key?(word.downcase) ? hash[word.downcase] +=1 : hash[word.downcase] = 1 }
    hash
end

