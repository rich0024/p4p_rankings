class P4pRankings::CLI

  def call
    puts "running scraper"
    P4pRankings::Fighters.scrape_fighters
  end


end
