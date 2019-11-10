class DrugShortage::CLI

  def call
    puts "Drug Shortages"
    @drug = DrugShortage::Drug.tester
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

    if input.to_i>0
      puts "Current Drug Shortages"
      puts @drug[input.to_i-1]
    elsif input == "2"
      puts "Resolved Drug Shortages"
      @drug.drug_2
    elsif input == "list"
      list
    end
    end
  end
end
