class Dragon

attr_reader :name, :color, :rider

def initialize(name, color, rider)
  @name = name
  @color = color
  @rider = rider
  @hungry = true
  @food_count = 0
end

def eat
  @food_count +=1
  if @food_count >= 3
    @hungry = false
  end
end

def hungry?
  @hungry
end

end
