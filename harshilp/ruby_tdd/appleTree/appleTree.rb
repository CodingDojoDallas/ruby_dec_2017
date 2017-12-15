class AppleTree
    attr_accessor :age
    attr_reader :height, :appleCount
    def initialize
        @age = 0
        @height = 1
        @appleCount = 0
    end
    def year_gone_by
        @age += 1
        @height = @height * 1.1
        if (4..10).include?(@age) 
            @appleCount += 2
        end
    end
    def pick_apples
        @appleCount = 0
    end
end