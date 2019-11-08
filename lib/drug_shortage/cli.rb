class DrugShortage::CLI

  def call
    puts "Drug Shortages"
    list
    menu
  end

  def list
    print "Select 1 for a list of the Current Drug Shortages or 2 for the Resolved Drug Shortages."
  end

  def menu
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case input
    when "1"
      puts "Current Drug Shortages"
      Drug.name
    when "2"
      puts "Resolved Drug Shortages"
    end
    end
  end
end
