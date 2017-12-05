class Tree
  attr_accessor :age
  attr_reader :height, :app_count
  
  def initialize
  @age = 0
  @height = 5
  @app_count = 0
  end

  def year_gone_by
    @age += 1
    @height += ten_percent_of(@height)

    if @age <= 3
      @app_count = 0
    elsif @age > 10
      @app_count = @app_count
    else
      @app_count += 2
    end
  end

  def pick_apples
    @app_count = 0
  end

  private
    def ten_percent_of h
      (h * 0.1).round(2)
    end
end