class Drug
  attr_accessor :name, :availability

  def self.test
    puts "I'm working"
  end

  @@newdrug = []
  @@date = []
  def self.current
    @doc = Nokogiri::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=CurrentShortages&sort=2"))
      @doc.css(".table").each do |tag|
         Drug.name = tag.css(".odd").text.strip
    end
    @@newdrug << self.current
  end

  def self.attach
    @@newdrug
    binding.pry
  end
end
