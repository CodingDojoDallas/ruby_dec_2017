require_relative 'project'
RSpec.describe Project do
    before(:each) do
        @project1 = Project.new('Project 1', 'description 1', 'John Doe')
        @project2 = Project.new('Project 2', 'description 2', 'Jane Doe')
    end
    it 'has a getter and setter for name attribute' do
        @project1.name = 'Changed Name'
        expect(@project1.name).to eq('Changed Name')
    end

    it 'has a getter and setter for owner attribute' do
        @project1.owner = 'Changed Owner'
        expect(@project1.owner).to eq('Changed Owner')
        expect(@project2.owner).to eq('Jane Doe')
    end

    it 'has a getter and setter for tasks attribute' do
        @project1.tasks = ['Some Task']
        expect(@project1.tasks).to eq(['Some Task'])
        expect(@project2.tasks).to eq([])
    end

    it 'has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq('Project 1, description 1')
        expect(@project2.elevator_pitch).to eq('Project 2, description 2')
    end

    it 'has a method add_tasks to add a task to tasks array' do
        @project1.add_tasks('Test')
        expect(@project1.tasks).to eq(['Test'])
    end

    it 'has a method print_tasks to print a list of all tasks' do
        @project1.add_tasks('Test')
        expect { @project1.print_tasks }.to output('Test').to_stdout
    end
end

