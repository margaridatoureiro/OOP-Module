class SlotMachine
  SYMBOLS = ["cherry", "joker", "star", "bell", "seven"]
  
  def initialize
    @reels = [] # STATE
  end

  # BEHAVIOUR

  def play
    3.times do
      @reels << SYMBOLS.sample
    end

    puts "***************************"
    puts "HERE'S YOUR RESULT !!!"
    puts @reels.join("---")
    puts "***************************"

    computer_score
  end

  def computer_score
    if @reels.uniq.size == 1
      puts "10 POINTS"
    elsif @reels.uniq.size == 2 && @reels.include?("joker")
      puts "5 POINTS"
    else
      puts "BETTER LUCK NEXT TIME.... :(("
    end
  end
end

my_slot_machine = SlotMachine.new

my_slot_machine.play
