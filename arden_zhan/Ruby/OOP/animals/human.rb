require_relative 'mammal'

# Require Relative looks in your local directory and loads up a ruby file that matches that name


class Human < Mammal
    puts 'I am in the human file'
end
human = Human.new    