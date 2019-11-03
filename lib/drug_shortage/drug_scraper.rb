class Drug

  def test
    puts "I'm working"
  end

  def scraper
    @doc = NOKOGIRI::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=CurrentShortages&sort=2"))
    binding.pry
  end
end
