from = 1
to = 100

target = rand from..to
puts "Guess a number between #{from} and #{to}"

loop do
  guess = gets.to_i

  case guess <=> target # 0 == EQ, -1 == LT, +1 == GT
  when 0
    puts "Correct! You got it!"
    break
  when -1 then puts "higher"
  when +1 then puts "lower"
  end
end
