require_relative "hw1.4.a.rb"

attr_accessor :flavor

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    return false if @flavor.downcase == "black licorice"
    return true
  end
end

puts JellyBean.new("black licorice", 100, "black licorice").delicious? # => false
puts Dessert.new("ice cream", 100).delicious? # => true
