class Project
  attr_accessor :name, :description, :owner, :tasks, :add_tasks
  def initialize name, description, owner
    @name = name
    @description = description
    @owner = owner
    @tasks = []
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end

  def tasks
  	return @tasks
  end

  def add_tasks(task)
  	self.tasks << task
  end
end