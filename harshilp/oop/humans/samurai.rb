require_relative 'human'
require_relative 'ninja'
require_relative 'wizard'

class Samurai < Human
    @@num_of_bushi = 0
    def initialize
        super
        @health = 200
        @@num_of_bushi += 1
    end
    def death_blow target
        target.health = 0
        self
    end
    def meditate
        @health = 200
        self
    end
    def how_many
        puts "There is/are #{@@num_of_bushi} samurai"
        self
    end
end

#test
genji = Ninja.new()
oda = Samurai.new()
merlin = Wizard.new()

oda.death_blow(merlin)
puts merlin.health

merlin.heal.heal.heal.fireball(oda)
puts merlin.health
puts oda.health

oda.how_many
oda.meditate
puts oda.health

genji.steal(oda).get_away
puts oda.health
puts genji.health