class PigLatinizer

    def piglatinize(string)
        a = string.split(" ") # split the string into separate words
        b = a.map {|word| piglatinize_word(word)} #iterate through each word and use the helper method to conver to piglatin
        b.join(" ") #returns the piglatin sentence
    end

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
      end
    
      def piglatinize_word(word)
        # word starts with vowel
        if vowel?(word[0])
          word + "way"
        else
        # word starts with one or more consonants
          vowel_index = word.index(/[aAeEiIoOuU]/)
          consonants = word.slice(0..vowel_index-1)
          word_leftover = word.slice(vowel_index..word.length)
          word_leftover + consonants + "ay"
        end
      end
            
end