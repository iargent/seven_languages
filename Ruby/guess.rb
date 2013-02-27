intNum=rand(10)+1;
puts 'I\'m thinking of a number from 1 to 10.'
puts 'Try to guess what it is.'
intGuess = gets.to_i
until intGuess==intNum
  if intGuess>intNum
    puts 'Too high.'
  else
    puts 'Too low.'
  end
  intGuess = gets.to_i
end
puts "Well done! I was thinking of #{intNum}."
gets