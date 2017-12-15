# Guess the Number
def guess_number guess
    number = 25

    return "You got it!" unless guess != number
    return "Guess was too high!" unless guess < number
    return "Guess was too low!"

end

puts guess_number 25
puts guess_number 100
puts guess_number 0