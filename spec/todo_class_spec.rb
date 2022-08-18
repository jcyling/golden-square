require "todo_class"

RSpec.describe TodoList do
  it "checks tasks" do
    list = TodoList.new()
    result = list.check()
    expect(result).to eq []
  end

  it "adds a task " do
    list = TodoList.new()
    list.add("Buy milk")
    result = list.check()
    expect(result).to eq ["Buy milk"]
  end

  it "adds two tasks " do
    list = TodoList.new()
    list.add("Buy milk")
    list.add("Get coffee")
    result = list.check()
    expect(result).to eq ["Buy milk", "Get coffee"]
  end

  it "complets a task that was added" do
    list = TodoList.new()
    list.add("Buy milk")
    list.complete("Buy milk")
    result = list.check()
    expect(result).not_to include "Buy milk"
  end

  it "returns error if completed task was not found" do
    list = TodoList.new()
    expect{ list.complete("Buy milk") }.to raise_error "Not found"
  end
end