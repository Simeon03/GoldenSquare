RSpec.describe "doubles challenge" do
    it "creates a sophisticated double" do
      task_list = double :task_list_object, list: [""], count: 1, clear: :success 
      task = ""

      allow(task_list).to receive(:add).with(task).and_return([task])
  
      # Don't edit below
      task_list.add(task)
      expect(task_list.list).to eq [task]
      expect(task_list.count).to eq 1
      expect(task_list.clear).to eq :success
    end
  end