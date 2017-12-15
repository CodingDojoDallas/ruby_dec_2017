require_relative 'human'

class Samurai < Human
    @@samurai_count = 0

    def initialize
        super
        @health = 200
        @@samurai_count += 1
    end

    def death_blow(obj)
        if obj.class.ancestors.include?(Human)
            obj.health = 0
            true
        else
            false
        end
    end

    def meditate
        @health = 200
    end

    def self.how_many
        puts @@samurai_count
    end
end
