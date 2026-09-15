def count_words(string)
    if string.nil?
        return {}
    end
    string=string.downcase.gsub(/\W/, ' ')
    words=string.split(' ')
    word_count=Hash.new(0)
    words.each do |word|
        word_count[word]+=1
    end
    return word_count
end

p count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
p count_words("Doo bee doo bee doo") # => {'doo' => 3, 'bee' => 2}