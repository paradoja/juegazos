from = 1
to = 100

target = rand from..to
puts "Guess a number between #{from} and #{to}"

loop do
  guess = gets.to_i

  if guess == target
    puts "Correct! You got it!"
    break
  elsif guess < target
    puts "higher"
  else
    puts "lower"
  end
end
