class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play

    until @game_over
      take_turn
    end
    game_over_message
    reset_game

  end

  def take_turn

    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    @seq.each {|color| puts color}
    add_random_color
  end

  def require_sequence
    @seq.each do |color|
      guess = gets.chomp
      if color != guess
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample(1)[0]
  end

  def round_success_message
    puts "CORRECT GUESS"
  end

  def game_over_message
    puts "GAME OVER"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

end
