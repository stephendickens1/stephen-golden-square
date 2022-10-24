def make_snippet(string)
    combination = string.split(" ")
    if combination.length <= 5
        return string
    else five_word_string = combination[0, 5].join(" ")
        return five_word_string + "..."
    end 
end 