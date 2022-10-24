def count_words(string)
    combination = string.split(" ")
    return combination.length
end 

puts count_words("one two three four five")