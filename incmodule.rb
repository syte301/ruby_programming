module MyModule
  attr_accesor :x, :y

  def initialize(option={})
    @x = option[:x] || 0
    @y = option[:y] || 0
  end

  def right
    self.x += 1
  end

  def left
    self.x -= 1
  end

  def up
    self.y += 1
  end

  def down
    self.y -= 1
  end

end #module


class Robot
  include MyModule
  def label
  '*'
  end
end

  class Dog
    include MyModule
    def up
    end
    def left
    end
    def label
    '@'
    end
  end

class Human
    include MyModule
    def label
    'H'
    end
end

h = Human.new
h.label