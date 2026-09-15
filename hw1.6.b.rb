class String
  def palindrome?
    string = downcase.gsub(/\W/, "")
    string == string.reverse
  end
end

p "aman, a plan, a canal -- Panama".palindrome?
# true
