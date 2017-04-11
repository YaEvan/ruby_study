class Vertor
  include Comparable
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x,y
  end

  def scalar
    Math.sqrt(x**2 + y**2)
  end

  def <=> (other)
    scalar <=> other.scalar
  end
end

v1 = Vertor.new(2, 6)
v2 = Vertor.new(4, -4)
p v1 <=> v2
p v1 < v2
p v1 > v2
