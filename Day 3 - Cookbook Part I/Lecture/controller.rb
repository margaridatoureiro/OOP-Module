require_relative 'task'

class Controller #User Actions
    def initialize(view, repository)
        @view = view # instance of View
        @repository = repository # instance of Repository
    end

    def add_task
        # 1. Ask the user what task they want to do
        title = @view.ask_user_for_task_title
        # 2. Create a Task instance
        task = Task.new(title)
        # 3. Give the task to the repository
        @repository.add_task(task)
    end

    def list_tasks
        # 1. Get all tasks from the repository
        tasks = @repository.all
        # 2. Display all the tasks
        @view.display(tasks)
    end

    def mark_task_as_completed
        # 1. Ask the user which task to mark as completed
        index = @view.ask_user_for_index
        # 2. Grab the Task instance from the repository at given index
        task = @repository.find(index)
        # 3. Mark task as completed
        task.mark_as_completed
    end
end