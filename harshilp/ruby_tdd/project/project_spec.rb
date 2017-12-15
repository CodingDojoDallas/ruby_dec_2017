require_relative 'project'
RSpec.describe Project do
    before(:each) do
        # updated this block to create two projects
        @project1 = Project.new('Project 1', 'description 1')
        @project2 = Project.new('Project 2', 'description 2')
        @project3 = Project.new('Project 3', 'description 3', 'owner 3')
    end
    it 'has a getter and setter for name attribute' do
      @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
      expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
    end 
    it 'has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq("Project 1, description 1")
        expect(@project2.elevator_pitch).to eq("Project 2, description 2")
    end
    it 'has a getter and setter for the owner attr' do
        @project3.owner = 'Changed owner'
        expect(@project3.owner).to eq('Changed owner')
    end
    it 'has a getter and setter for the tasks attr and successfully adds task to tasks' do
        @project3.add_tasks('test dis shit')
        expect(@project3.tasks.include?('test dis shit')).to eq(true)
    end
    it 'successfully executes print_tasks method' do
        @project3.add_tasks('test dis shit')
        @project3.add_tasks('test dis shit')        
        expect{@project3.print_tasks}.to output("\"test dis shit\"\n""\"test dis shit\"\n").to_stdout
    end
end