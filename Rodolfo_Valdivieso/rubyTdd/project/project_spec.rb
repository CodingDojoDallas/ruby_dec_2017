# require_relative 'project' # include our Project class in our spec file
# RSpec.describe Project do  
#   before(:each) do 
#     @project1 = Project.new('Project 1', 'description 1') # create a new project and make sure we can set the name attribute
#   end
#   it 'has a getter and setter for name attribute' do
#     @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
#     expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
#   end 
# end
require_relative 'project'
RSpec.describe Project do
  before(:each) do
    # updated this block to create two projects
    @project1 = Project.new('Project 1', 'description 1', 'Owner')
    @project2 = Project.new('Project 2', 'description 2', 'Owner2')

  end
  
  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
    expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end 

   it 'has a getter and setter for name attribute' do
    @project1.owner = "Changed Owner" # this line would fail if our class did not have a setter method
    expect(@project1.owner).to eq("Changed Owner") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end 

  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end

  it 'has a method add task to explain name and description' do
  	@project1.add_tasks("Task 1")
  	expect(@project1.tasks).to eq(['Task 1'])
  end
end