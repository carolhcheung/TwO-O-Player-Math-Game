class Question
  attr_accessor :turn

  #initialize question on each turn
  def initialize(turn)
    @turn = turn
  end

  #start new turn and output for question generated
  RANGE = 1..20
  def ask_question
    num1 = rand(RANGE)
    num2 = rand(RANGE)
    
    puts "🤝 NEXT PLAYER'S TURN 🤝"
    puts "Player #{turn}: What is #{num1} + #{num2}?"
    print "Your answer: " #prints for no new line
    
    answer = $stdin.gets.chomp.to_i  #check and converts string input into integer for answer

    # answer == num1 + num2 ? (puts "🎉That's Correct!🎉"; true) : (puts "🙈Sorry, that's incorrect!🙈"; false)
    if answer == num1 + num2
      puts "🎉That's Correct!🎉"
      return true
    else 
      puts "🙈Sorry, that's incorrect!🙈"
      return false
      #question.ask_question = false then update lives count with -= 1
    end
  end

end