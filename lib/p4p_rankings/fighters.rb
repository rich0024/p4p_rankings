class P4pRankings::Fighters
  attr_accessor :name, :win, :loss, :draw

  def initialize(name:, win:, loss:, draw:)
    @name = name
    @win = win
    @loss = loss
    @draw = draw
  end

  def record
    "#{@win} - #{@loss} - #{@draw}"
  end

  def self.all
     @@all ||= self.scrape_fighters.collect.with_index do |fighter_hash, i|
      self.new(fighter_hash)
    end
  end

  def self.scrape_fighters
    doc = Nokogiri::HTML(open("http://boxrec.com/en/ratings?nbf%5Bcountry%5D=&nbf%5Bdivision%5D=&nbf%5Bsex%5D=M&nbf%5Bstance%5D=&nbf%5Bstatus%5D=a&r_go="))
    doc.css('tr').collect do |fighter|
      {
      name: fighter.css("a.personLink").text,
      win: fighter.css('span.textWon').text,
      loss: fighter.css('span.textLost').text,
      draw: fighter.css('span.textDraw').text
      }
    end - [{:name=>"", :win=>"", :loss=>"", :draw=>""}]
  end

  def self.rankings
    all.collect.with_index do |fighter, i|
      "#{i + 1}. #{fighter.name}"
    end
  end


end
