require_relative "task"
require_relative "repository"
require_relative "controller"
require_relative "view"
require_relative "router"

repository = Repository.new
view = View.new

# task1 = Task.new("Do the laundry")

# task2 = Task.new("Have a beer")


controller = Controller.new(view, repository)

# controller.add_task
# controller.add_task
# controller.list_tasks
# controller.mark_task_as_completed

# controller.list_tasks

router = Router.new(controller)

router.run

