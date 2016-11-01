#simple echo
def echo(phrase)
  return phrase
end

#turn echo into all uppercase
def shout(phrase)
  return phrase.upcase
end

#repeating the phrase
def repeat(*phrase)
  if (phrase.length > 1)
    return ([phrase[0]] * phrase[1]).join(' ')
  else
    return ([phrase] * 2).join(' ')
  end
end

#return number of letters
def start_of_word(word,num)
  return word[0..num-1]
end

#return the first word of a strings
def first_word(str)
  to_arr = str.split(" ")
  return to_arr[0]
end

#titleize a word
def titleize(str)
  arr = str.split(" ")
  new_arr = []

  arr.each do |x|
    new_arr.push(x.capitalize)
  end

  return new_arr.join(" ")
end
