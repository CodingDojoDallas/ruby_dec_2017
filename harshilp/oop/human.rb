class Human
    attr_accessor :health
    def initialize hp=100, str=3, int=3, stl=3
        @health = hp
        @strength = str
        @stealth = stl
        @intelligence = int
    end
    def attack target
        p target.class.ancestors
        if target.class.ancestors.include?(Human)
            target.health -= (10*@strength)
        end
    end
    def show
        puts "Hp: #{@health}"
    end
end

human = Human.new()
human2 = Human.new()
human.attack(human2)
human2.show
