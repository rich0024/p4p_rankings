class P4pRankings::Fighters
  attr_accessor :name, :record, :win, :loss, :draw
  @@all = []

  def initialize
    name = @name
    record = @record
    win = @win
    loss = @loss
    draw = @draw
  end

  def self.all
    binding.pry
  end

  def self.scrape_fighters
    doc = Nokogiri::HTML(open("http://boxrec.com/en/ratings?nbf%5Bcountry%5D=&nbf%5Bdivision%5D=&nbf%5Bsex%5D=M&nbf%5Bstance%5D=&nbf%5Bstatus%5D=a&r_go="))
    doc.css('tr').collect do |fighter|
      {
      name: fighter.css("a.personLink").text,
      record: "#{win = fighter.css('span.textWon').text} - #{loss = fighter.css('span.textLost').text} - #{draw = fighter.css('span.textDraw').text}"
      }
    end
  end


end
