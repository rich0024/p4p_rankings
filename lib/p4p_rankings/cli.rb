class P4pRankings::CLI

  def call
      puts "_________________________________________________________________"
      puts "                  Hello! Welcome to P4pRankings!"
      puts "        Here are the top 50 pound for pound boxers in the world"
      puts "         To view a fighter's record, enter the fighter's rank"
      puts "                      To quit, type 'exit'."
      puts "_________________________________________________________________"
      rankings
  end

  def rankings
    puts P4pRankings::Fighters.rankings
    input = ""
    while input != "exit"
      puts "Please enter fighter's rank to view the fighter's record (wins - losses - draws)"
      puts "Or"
      puts "To view the rankings again, enter 'rankings'"
      input = gets.strip
      if input.to_i > 0 && input.to_i < 51
        puts "#{P4pRankings::Fighters.all[input.to_i - 1].name}'s record is #{P4pRankings::Fighters.all[input.to_i - 1].record}"
      elsif input == 'rankings'
        puts P4pRankings::Fighters.rankings
      else
        puts "Invalid entry." unless input == "exit"
      end
    end
    goodbye
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
