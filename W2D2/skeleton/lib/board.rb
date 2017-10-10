class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player_one = name1
    @player_two = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    four_stones = [:stone] * 4
    @cups.each_index {|index| @cups[index] += four_stones unless [13,6].include?(index)}
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    index = start_pos
    until stones.empty?
      index += 1
      index = 0 if index > 13
      if index == 6
        @cups[6] << stones.pop if current_player_name == @player_one
      elsif index == 13
        @cups[13] << stones.pop if current_player_name == @player_two
      else
        @cups[index] << stones.pop
      end
    end
    render
    next_turn(index)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? {|el| el.empty? } || @cups[7..12].all? {|el| el.empty? } 
    return false
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    if @cups[6].length > @cups[13].length
      return @player_one
    else
      return @player_two
    end
  end
end
