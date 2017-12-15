class Mammal
    attr_accessor :health
    def initialize hp=150
        @health = hp
    end
    def display_health
        puts "HP: #{@health}"
    end
end