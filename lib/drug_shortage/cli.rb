class DrugShortage::CLI

  def call
    puts "Hi! Welcome to Drug Shortages"
    list
    menu
  end

  def list
    puts "Type 1 for a list of Current Drug Shortages"
    puts "Type 2 for a list of Resolved Drug Shortages"
    puts "Type exit to close the program"
  end

  def menu
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    if input == "1"
      puts "Current Drug Shortages"
      puts "#{DrugShortage::Drug.current_drug}"
      puts "Type list to view selections"
    elsif input == "2"
      puts "Resolved Drug Shortages"
      puts "#{DrugShortage::Drug.resolved_drug}"
      puts "Type list to view selections"
    elsif input == "list"
      list
    end
    end
  end
end
