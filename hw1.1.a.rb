def palindrome?(string)
    if string==nil
        return false
    end
    string=string.downcase.gsub(/\W/, '')
    string2=string.downcase.reverse.gsub(/\W/, '')
    if string==string2
        return true
    else
        return false
    end
end

p palindrome?("A man, a plan, a canal -- Panama") #=> true
p palindrome?("Madam, I'm Adam!") # => true
p palindrome?("Abracadabra") # => false (nil is also ok)
p palindrome?(nil) #=> false