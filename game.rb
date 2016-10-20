class Game
  def play

  end

  def initialize
    @a1 = '1'
    @a2 = '2'
    @a3 = '3'
    @b1 = '4'
    @b2 = '5'
    @b3 = '6'
    @c1 = '7'
    @c2 = '8'
    @c3 = '9'

    square_array = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3
    ]

  end

  def x_square_selector x_input
    case x_input
      when 1
        @a1 = 'x'
      when 2
        @a2 = 'x'
      when 3
        @a3 = 'x'
      when 4
        @b1 = 'x'
      when 5
        @b2 = 'x'
      when 6
        @b3 = 'x'
      when 7
        @c1 = 'x'
      when 8
        @c2 = 'x'
      when 9
        @c3 = 'x'
      else
        puts 'Only single-digit numbers are allowed'
    end
  end

  def o_square_selector o_input
    case o_input
      when 1
        @a1 = 'o'
      when 2
        @a2 = 'o'
      when 3
        @a3 = 'o'
      when 4
        @b1 = 'o'
      when 5
        @b2 = 'o'
      when 6
        @b3 = 'o'
      when 7
        @c1 = 'o'
      when 8
        @c2 = 'o'
      when 9
        @c3 = 'o'
      else
        puts 'Only single-digit numbers are allowed'
    end
  end

  def win_logic turn
    if turn == !nil
      if @a1 == @a2 && @a1 == @a3
        puts 'o wins'
        return exit
      elsif @b1 == @b2 && @b1 == @b3
        puts 'o wins'
        return exit
      elsif @c1 == @c2 && @c1 == @c3
        puts 'o wins'
        return exit
      elsif @a1 == @b1 && @a1 == @c1
        puts 'o wins'
        return exit
      elsif @a2 == @b2 && @a2 == @c2
        puts 'o wins'
        return exit
      elsif @a3 == @b3 && @a3 == @c3
        puts 'o wins'
        return exit
      elsif @a1 == @b2 && @a1 == @c3
        puts 'o wins'
        return exit
      elsif @a3 == @b2 && @a3 == @c1
        puts 'o wins'
        return exit
      end
    elsif turn == nil
      elsif @a1 == @a2 && @a1 == @a3
        puts 'x wins'
        return exit
      elsif @b1 == @b2 && @b1 == @b3
        puts 'x wins'
        return exit
      elsif @c1 == @c2 && @c1 == @c3
        puts 'x wins'
        return exit
      elsif @a1 == @b1 && @a1 == @c1
        puts 'x wins'
        return exit
      elsif @a2 == @b2 && @a2 == @c2
        puts 'x wins'
        return exit
      elsif @a3 == @b3 && @a3 == @c3
        puts 'x wins'
        return exit
      elsif @a1 == @b2 && @a1 == @c3
        puts 'x wins'
        return exit
      elsif @a3 == @b2 && @a3 == @c1
        puts 'x wins'
        return exit
      end
  end

  def board
    puts @a1.to_s + '|' + @a2.to_s + '|' + @a3.to_s
    puts @b1.to_s + '|' + @b2.to_s + '|' + @b3.to_s
    puts @c1.to_s + '|' + @c2.to_s + '|' + @c3.to_s
  end

end
