text = ['code', 'doce', 'ecod', 'framer', 'frame']

def remove_anagrams(text)
  removed_anagrams = []

  text.each_with_index do |t, i|
    text.each_with_index do |tt, ii|
      if (t.chars.sort == tt.chars.sort) && (t.length == tt.length)
        ra = removed_anagrams.map { |word| word.chars.sort }

        if removed_anagrams.empty?
          removed_anagrams << t
        elsif !(ra.include?(t.chars.sort)) && (i > ii)
          removed_anagrams << t
        end
      end
      if (i > ii) && !(t.chars.sort == tt.chars.sort) && !(t.length == tt.length)
        removed_anagrams << t if !(removed_anagrams.include? t)
      end
    end
  end

  removed_anagrams.sort
end

p remove_anagrams(text)
