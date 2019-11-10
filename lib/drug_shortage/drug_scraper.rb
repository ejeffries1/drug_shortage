class DrugShortage::Drug
  attr_accessor :name, :availability

  def self.tester
    puts "This method is working. Goodluck!"
    drug_1 = self.new
    drug_1.name = "Atorvastatin-Aug 2019"

    drug_2 = self.new
    drug_2.name = "Lisinopril-Nov 2019"

    [drug_1, drug_2]
  end

  def self.scrape_current
    @doc = Nokogiri::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=CurrentShortages&sort=2"))
      name = @doc.css("td[align='left']").text
      availability = @doc.css("td.right").text
    binding.pry
  end
end
