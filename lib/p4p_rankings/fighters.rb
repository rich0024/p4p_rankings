class P4pRankings::Fighters

  def self.scrape_fighters
    doc = Nokogiri::HTML(open("http://boxrec.com/en/ratings?nbf%5Bcountry%5D=&nbf%5Bdivision%5D=&nbf%5Bsex%5D=M&nbf%5Bstance%5D=&nbf%5Bstatus%5D=a&r_go="))
    fighter = doc.css("a.personLink").text
  end

  def rankings
    fighter.each_with_index{ |value, index| puts "#{index}. #{value}"}
  end

end
