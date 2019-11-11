class DrugShortage::CLI

  def call
    puts "Drug Shortages"
    list
    menu
    #@drug = DrugShortage::Drug.current_drug
  end

  def list
    print "Select 1 for a list of the Current Drug Shortages or 2 for the Resolved Drug Shortages."
  end

  def menu
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    if input == "1"
      puts "Current Drug Shortages"
      puts "#{DrugShortage::Drug.current_drug}"
    elsif input == "2"
      puts "Resolved Drug Shortages"
      return DrugShortage::Drug.resolved_drug
    elsif input == "list"
      list
    end
    end
  end
end
