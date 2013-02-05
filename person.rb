# A class to represent people
class Person
  def initialize(name, height, weight = 0)
    @name   = name
    @height = height
    @weight = weight
  end

  def description
    d = "I am #{@name}. I am #{@height} feet tall"
    d << " and I weigh #{@weight} pounds" if @weight > 0
    d << "."
  end
end
