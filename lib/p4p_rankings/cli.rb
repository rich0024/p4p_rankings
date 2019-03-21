class P4pRankings::CLI

  def call
    input = ""

  while input != "exit"
    puts "_________________________________________________________________"
    puts "                  Hello! Welcome to P4pRankings!"
    puts "Here you will find the top 50 pound for pound boxers in the world"
    puts "              To view the rankings, enter 'rankings'"
    puts "            To view a fighter's record, enter 'record'"
    puts "                      To quit, type 'exit'."
    puts "_________________________________________________________________"
    input = gets.strip
    case input
    when "rankings"
      rankings
    when "record"
      record
    end
  end
  goodbye
  end

  def rankings
    puts P4pRankings::Fighters.rankings
    rankings_menu
  end

  def rankings_menu
    puts "To view the rankings again, enter 'rankings'"
    puts "To view a fighter's record, enter 'record'"
    puts "To return to start menu, enter 'exit'" 
    input = ""
    input = gets.strip
    case input
    when "rankings"
      rankings
    when "record"
      record
    end
    if input != "rankings" && input != "record" && input != "exit"
      puts "Invalid entry."
    end
  end
  
  def record
    puts "Please enter the fighter's rank to view the fighter's record (wins - losses - draws)"
    input = gets.strip.to_i
    if input.to_i > 0 && input.to_i < 51
    puts "#{P4pRankings::Fighters.all[input - 1].name}'s record is #{P4pRankings::Fighters.all[input - 1].record}"
    record_menu
    elsif
    puts "Invalid entry."
  end
  end

  def record_menu
    puts "Would you like to view another fighter's record, enter 'yes'"
    puts "To return to the rankings, enter 'rankings'"
    puts "To return to start menu, enter 'exit'"
    input = ""
    input = gets.strip
    case input
    when "rankings"
      rankings
    when "yes"
      record
    end
    if input != "rankings" || input != "yes" || input != "exit"
      puts "Invalid entry."
    end
  end

  def goodbye
    puts <<-'EOF'
        |||||||||
        | _   _ |      
       (  ' _ '  )
        |  ___  |
         |_____|                   
  _______/     \_______         
 /                     \          
|   |\             /|   |
|   ||  .       .  ||   |     
|   / \           / \   |
\  |   | |_ | _| |   |  /     
|==|   | |_ | _| |   |==|
/  /_ _|_|__|__|_|_ _\  \
|___| /            \|___|
      |     |      |
      |     |      |
      |---  |   ---|         
      |     |      |           
      "|""|"""|""|""           
       |  |   |  |      -Thank you for using P4pRankings-
       |  |   |  |
      /   )   (   \
     Ooooo     ooooO
EOF

  end  
end
