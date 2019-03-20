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
    when "rankings"
      rankings
    when "record"
      record
    end
  end
  end

  def rankings
    puts P4pRankings::Fighters.rankings
  end

  def record
    puts "Please enter the fighter's rank to view the fighter's record"
    input = gets.strip.to_i
    puts "#{P4pRankings::Fighters.all[input - 1].name}'s record is #{P4pRankings::Fighters.all[input - 1].record}"
  end

end
