require_relative 'mammal'

class Lion < Mammal
    def initialize hp=170
        @health = hp
    end
    def fly
        @health -= 10
        self
    end
    def attack_town
        @health -= 50
        self
    end
    def eat_humans
        @health += 20
        self
    end
    def display_health
        puts "I am a Lion. RAWR!"
        super
    end
end

ookinaNeko = Lion.new()
ookinaNeko.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
