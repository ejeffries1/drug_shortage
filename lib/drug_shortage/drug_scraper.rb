class Drug
  attr_accessor :name, :availability

  def self.test
    puts "I'm working"
  end

  def self.current
    @doc = Nokogiri::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=CurrentShortages&sort=2"))
      @doc.css(".odd").each do |tag|
         name = tag.css("a").text
         availability = tag.css(".right").text
    binding.pry
    end
  end
end
