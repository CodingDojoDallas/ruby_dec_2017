#Assignment Project Ruby OOP

class Project
  attr_accessor :name, :description, :owner
  def initialize name, description, owner
    @name        = name
    @description = description
    @owner       = owner   
    @tasks       = []
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end
  def tasks
  	return @tasks
  end
  def add_tasks(task)
  	 self.tasks << task
  	 return self.tasks
  end

  def print_tasks
  	@tasks.each do |x|
  		puts x
  	end
  	
  end
end
# project1 = Project.new("Project 1", "Description 1")
# puts project1.name # => "Project 1"
# project1.elevator_pitch  # => "Project 1, Description 1"