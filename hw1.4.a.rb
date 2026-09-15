class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    return true unless @calories >= 200
    return false
  end

  def delicious?
    return true
  end
end
