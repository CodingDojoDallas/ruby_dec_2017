class Project
    def initialize(name, description, owner)
        @name = name
        @description = description
        @owner = owner
        @tasks = []
    end
    attr_accessor :name
    attr_accessor :description
    attr_accessor :owner
    attr_accessor :tasks
    def elevator_pitch
        p "#{@name}, #{@description}"
    end
    
    def add_tasks(task)
        @tasks.push(task)
    end

    def print_tasks
        @tasks.each { |task| print task }
    end
end

/
project1 = Project.new("Project 1", "Description 1")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
/