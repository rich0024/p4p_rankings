class P4pRankings::CLI

  def call
    input = ""

  while input != "exit"
    puts "Hello! Welcome to P4pRankings!"
    puts "Here you will find the top 50 pound for pound boxers in the world"
    puts "To view the rankings, enter 'rankings'"
    puts "To view a fighter's record, enter 'record'"
    puts "To quit, type 'exit'."
    input = gets.strip
    case input
    when input = "rankings"
      rankings
    when input = "record"
      record
    end
  end
  end

  def rankings
    P4pRankings::Fighters.rankings
  end

  def record
    puts "Please enter the fighter's rank to view the fighter's record"
    input = gets.strip.to_i
    #includes?
  end

end
