#pig latin, maniuplate so that it translates normal things to pig Latin
def translate(str)
    #creates array of all words in str
    split_str = str.split(" ")
    translated_words = []
    #matches vowels
    vowels = /[aeiou]/i
    #next loop through the array, and convert each word
    #push to translated words. Then join together and return
    split_str.each do |word|
        if (word[0].match(vowels))
            translated_words.push(word + "ay")
        else
            translated_words.push(match_consonants(word.to_s))
        end
    end
    return translated_words.join(" ")
end

def match_consonants(stuff)
    #instantiate variables
    matched_chunk = ""
    post_chunk = ""
    ay = "ay"
    word = ""
    matches = /\A[^aeiou]{1,}/.match(stuff)
    #sets conditions for "qu". Otherwise return things normally.
    if (matches[0][-1] == "q")
        matched_chunk = matches[0] + "u"
        post_chunk = matches.post_match[1..-1]
        word = post_chunk + matched_chunk + ay
    else
        word = matches.post_match + matches[0] + ay
    end
    return word
end
