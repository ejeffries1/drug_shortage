class DrugShortage::DrugScraper
  attr_accessor :name, :availability

  def self.test
    puts "I'm working"
  end

  @newdrug = []
  @@date = []
  def self.current
    @doc = Nokogiri::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=CurrentShortages&sort=2"))
      @block = @doc.css("drug-shortage-container")
        @block.each do |tag|
         name = tag.css(".odd").text.strip
         @newdrug << name
         drug = Drug.new

    end
  end

  def self.attach
    @newdrug
    binding.pry
  end
end
