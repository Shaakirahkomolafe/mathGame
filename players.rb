class Players
  attr_accessor :name, :lives
  def initialize(name, lives = 3)
    @name = name
    @lives = lives
  end

  def reduce_life
    @lives = @lives - 1
  end
end