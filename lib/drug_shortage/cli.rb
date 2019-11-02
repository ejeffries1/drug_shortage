class DrugShortage::CLI

  def call
    puts "Drug Shortages"
    menu
  end

  def menu
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case input
    when "1"
      puts "Current Drug Shortages"
    when "2"
      puts "Resolved Drug Shortages"
    end
    end
  end
end
