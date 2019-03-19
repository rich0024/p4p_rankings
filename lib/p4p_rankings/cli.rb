class P4pRankings::CLI

  def call
    puts "running scraper"
    P4pRankings::Fighters.all
  end


end
