require_relative 'project'
RSpec.describe Project do  
	before(:each) do 
		@project1 = Project.new('Project 1', 'description 1', 'John Doe')
		@project2 = Project.new('Project 2', 'description 2', 'Jane Doe')
	end

	it 'has a getter and setter for name attribute' do
		@project1.name = "Changed Name"
		expect(@project1.name).to eq("Changed Name")
	end 

	it 'has a getter and setter for owner attribute' do
		@project1.owner = "Changed Owner"
		expect(@project1.owner).to eq("Changed Owner")
	end
	
	it 'has a method elevator_pitch to explain name and description' do
		expect(@project1.elevator_pitch).to eq('Project 1, description 1')
		expect(@project2.elevator_pitch).to eq('Project 2, description 2')
	end

	context 'methods for tasks' do
		before(:each) do
			1.upto(3) { |i| @project1.add_tasks("Task ##{i}") }
		end

		it 'has method add_tasks to push single task to @tasks and tasks method to return tasks' do
			expect(@project1.tasks).to eq(['Task #1', 'Task #2', 'Task #3'])
		end

		it 'has method print_tasks that prints each task in project' do
			expect{ @project1.print_tasks }.to output("Task #1\nTask #2\nTask #3\n").to_stdout
		end
	end
end