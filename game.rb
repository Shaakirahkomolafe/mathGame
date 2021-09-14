#one class for questions , another for answers
#player class(array of players)(ifnstatement for validation for curent player)
#game class(current player, next player)
#game ends when @lives is 0 for either player 1 or plyer 2
#if either player gets a question wrong , reduce_life
require './players'
require './questions'
#create new players


class Game 
  def initialize
    @player_one = Players.new('Sumayyah')
    @player_two = Players.new('Ashabi')
    @current_player = @player_one
    @status = 1
  end

  def player_switch
    if @current_player == @player_one
      @current_player = @player_two  
    else 
      @current_player = @player_one
    end
  end

  def start_game
    puts "Game started"
    puts "#{@player_one.name} Vs. #{@player_two.name}"
    while @status == 1 do
      
      question_object = Questions.new
      puts "#{@current_player.name}: #{question_object.question} "
      #puts q.question
      player_response = gets.chomp.to_i
      self.check_answer(player_response, question_object.answer)
      self.check_lives
      puts "#{@player_one.name} has #{@player_one.lives} lives left and #{@player_two.name} has #{@player_two.lives} lives left"
      
    end
  end
  
  def check_answer(player_response, answer)
    if player_response != answer
      puts "Wrong answer #{@current_player.name}"
      @current_player.reduce_life
    else
      puts "Yes, Correct, Great Job #{@current_player.name}"
    end
  end

  def check_lives
    self.player_switch
    if @player_one.lives == 0 || @player_two.lives == 0
      if @player_one.lives == 0
      puts "#{@player_two.name} has won the game and has #{@player_two.lives} lives left"
      else
        puts "#{@player_two.name} has won the game and has #{@player_two.lives} lives left"
      end
      @status = 0
    end
  end

end

