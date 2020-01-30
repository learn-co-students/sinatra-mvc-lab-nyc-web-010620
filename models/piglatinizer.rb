require 'pry'
class PigLatinizer
  attr_accessor :text
 
#   def initialize
#     @text = text
#   end
  
  def begins_as_a_vowel?(word)
    vowels = ["a", "e", "o", "u", "i", "A", "E", "O", "U", "I"]

    vowels.include?(word[0]) ? true : false
  end

  def add_way_to_vowel(word)
    "#{word}way"
  end

  def consonant_transformation(word)
    consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z",
                 "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"
]
    count = 0
    word.each_char do |char|
        unless consonant.include?(char)
            break
        end
        count += 1
    end

    sliced_consonant = word.slice(0, count)
    sliced_word = word.slice(count..-1)
    "#{sliced_word}#{sliced_consonant}ay"
  end

  def piglatinize(text)
    words = text.split(" ")

    translated = words.map do |word|
        if begins_as_a_vowel?(word)
            add_way_to_vowel(word)
        else
            consonant_transformation(word)
        end
    end

    translated.join(" ")
  end
end






















