class Dessert
  # add code for setters and getters
  attr_accessor:name
  attr_accessor:calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
  end
  def delicious?
    # your code here
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  def initialize(flavor)
    # your code here
  end
end
