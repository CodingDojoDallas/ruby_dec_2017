# Assignment: Project

# Create a Project Class that has the following attributes: name, description
# Also create an instance method called elevator_pitch that prints out name of project and its description separated by comma

class Project
    attr_accessor :name, :description, :owner
    attr_reader :tasks
    def initialize(name, description, owner)
        @name = name
        @description = description
        @owner = owner
        @tasks = []
    end

    def elevator_pitch
        "#{@name}, #{@description}"
    end

    def add_tasks task
        @tasks << task
    end

    def print_tasks
        @tasks.each { |task| puts task }
    end
end

# project1 = Project.new("Project 1", "Description 1")
# puts project1.name # => "Project 1"
# puts project1.elevator_pitch  # => "Project 1, Description 1"