class Player
  #getter/setter to allow reading/writing of attribute values
  attr_accessor :name, :lives  

  #initialize a new instance of player with name and lives
  def initialize()  
    @name = name
    @lives = 3
  
  end
end