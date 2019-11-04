class Drug

  def self.test
    puts "I'm working"
  end

  def self.current
    @doc = Nokogiri::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=CurrentShortages&sort=2"))
    binding.pry
  end
end
