require_relative "./game.rb"

# Instantiate game object
game = Game.new

game.play
turn = nil

puts 'Ric-Rac-Roe'
loop do
  game.board
  if turn
    puts 'Player x, please select a square 1-9'
    input = gets.chomp.to_i
    game.x_square_selector(input)
  else
    puts 'Player o, please select a square 1-9'
    input = gets.chomp.to_i
    game.o_square_selector(input)
  end

turn == nil ? turn = !nil : turn = nil

game.win_logic(turn)

end
