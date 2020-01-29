class PigLatinizer

    def piglatinize(text)
        words = text.split(' ')
        out = ''
        words.each do |word|
            i = 0
            until ['a','e','i','o','u'].include? word[i].downcase
                i += 1
            end
            if i == 0
                out = out + word + "way "
            else
                out = out + word[i..-1] + word[0...i] + "ay "
            end
        end

        out.strip
    end

end