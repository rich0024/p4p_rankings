class P4pRankings::CLI

  def call
    input = ""
  when input != "exit"
    puts "Hello! Welcome to P4pRankings!"
    puts "Here you will find the top 50 pound for pound boxers in the world"
    puts "To view the rankings, enter 'rankings'"
    puts "To view a fighter's record, enter the fighter's rank"
    input = gets.strip
    case input
    when input = "rankings"
      rankings
    end
  end
  end

  def rankings
    P4pRankings::Fighters.rankings
  end

end


end
