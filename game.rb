class Game
  attr_accessor :turn, :player1, :player2

  def initialize
    puts "🤝Let the games begin!🤝"
    @player1 = Player.new
    @player2 = Player.new
    @turn = 1
  end 
  
  #game start output lives and question on each new turn
  def start
    puts "Current lives: Player 1: #{@player1.lives}/3 lives. Player 2: #{@player2.lives}/3 lives."
    #generate new question on each turn
    question = Question.new(turn)
    if !question.ask_question  #if question.ask_question=false
      update_lives(turn) #update_lives after each turn
    end
    update_turn(turn)  #update_turn player1/2 turn and gives new question
  end
  
  #game over output and exit game
  def game_over
    puts "Player 1: #{@player1.lives}/3 lives. Player 2: #{@player2.lives}/3 lives."
    puts "👻👻 GAME OVER 👻👻"
    puts "😝THANK YOU COME AGAIN!😝"
    exit()  #Ruby method, exits game and end program doesn't run any other code after
  end
  
  #update number of lives after each turn
  def update_lives(turn)
    # turn == 1 ? @player1.lives -= 1: @player2.lives -=1
    # @player1.lives == 0 || @player2.lives == 0 ? game_over : nil
    if turn == 1
      @player1.lives -= 1
    else 
      @player2.lives -= 1
    end
    if @player1.lives == 0 || @player2.lives == 0
      game_over #call gameover method
    end
  end
  
  #toggle turn between player1 and 2 after each question
  def update_turn(turn) 
    # @turn = turn == 1 ? 2 : 1
    # start    
    if turn == 1 
      @turn = 2
    else
      @turn = 1
    end
    start #start new turn after each question
  end
  
end