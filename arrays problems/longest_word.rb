# longest word in a string ignoring punctuation like !.? etc

def longest_word(string)
  string.gsub(/[^a-zA-Z ]/, '').split(' ').max_by(&:length)
end

print longest_word('What is the longest word!!!?1!?! in this string?')
