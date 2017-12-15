def guess_number guess
    number = 25
    unless guess == number
        if guess < number
            puts "Guess was too low"
        else 
            puts "Guess was too high"
        end
    else 
        puts "You got it"
    end
end 

guess_number 2
guess_number 26
guess_number 25