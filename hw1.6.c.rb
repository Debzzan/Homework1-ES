module Enumerable
  def palindrome?
    elements = to_a
    elements == elements.reverse
  end
end

p [1, 2, 3, 2, 1].palindrome?
# true
