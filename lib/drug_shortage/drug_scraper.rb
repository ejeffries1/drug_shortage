class DrugShortage::Drug
  attr_accessor :name, :availability

    @all = []
  def self.scrape_current
    doc = Nokogiri::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=CurrentShortages&sort=2"))
      doc.css(".drug-shortage-container").collect do |list|
      drug.name = list.css("tr.odd").text.gsub(/\s+/mu," ").strip
      @all << drug.name
    end
      @all
  end

  def self.current_drug
    self.scrape_current
  end

  def self.scrape_resolve
    @resolved = []
    doc = Nokogiri::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=ResolvedShortages"))
      doc.css(".drug-shortage-container").each do |drug|
        name = drug.css("tr.odd").text.gsub(/\s+/mu," ").strip
        resolve = DrugShortage::Drug.new
         @resolved << resolve.name
         @resolved
        #binding.pry
      end
  end

  def self.resolved_drug
    self.scrape_resolve.each do |i|
      i.children.text
      #binding.pry
    end

  end
end
