class Questions
  attr_accessor :question, :answer
  
  def initialize
@number_one= rand(1..20)
@number_two= rand(1..20)
@question = "What is #{@number_one} plus #{@number_two}?"
@answer = @number_one + @number_two
  end    
end