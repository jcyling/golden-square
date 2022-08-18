# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.
     

# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.

class TodoList
  def initialize()
    @tasks = []
  end

  def add(todo)
    @tasks << todo
  end

  def check
    return @tasks
  end

  def complete(task)
    fail "Not found" if !@tasks.include?(task)
    @tasks.delete(task)
  end
end