class DrugShortage::Drug
  attr_accessor :name

    @all = []
  def self.scrape_current
    doc = Nokogiri::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=CurrentShortages&sort=2"))
      current = DrugShortage::Drug.new
      doc.css(".drug-shortage-container").collect do |list|
      current.name = list.css("tr.odd").text.gsub(/\s+/mu," ").strip
    end
      current.name
  end

  def self.current_drug
    self.scrape_current
  end

  def self.scrape_resolve
    @resolved = []
    doc = Nokogiri::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=ResolvedShortages"))
      doc.css(".drug-shortage-container").collect do |drug|
        resolve = DrugShortage::Drug.new
        resolve.name = drug.css("tr.odd").text.gsub(/\s+/mu," ").strip
        resolve.name
      end
  end

  def self.resolved_drug
    self.scrape_resolve
    end

  end
