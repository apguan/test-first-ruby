class Book
attr_accessor :title

    def title
    titleize(@title)
    end

    def titleize(title)
        ignore = ["and", "is", "in", "the", "of", "an", "a"]
        words = title.split(" ")
        ending = words.length
        #in place modification
        words.first.capitalize!
        #capitalize with rest of the words
        words[1..ending].each do |word|
            word.capitalize! if !ignore.include?(word)
        end
        words.join(" ")
    end
end
