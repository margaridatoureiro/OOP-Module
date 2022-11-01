class Router
    def initialize(controller)
        @controller = controller
    end

    def run 
        loop do
            puts "What do you want to do next?"
            puts "1 - List all tasks"
            puts "2 - Add a task"
            puts "3 - Mark a task as completed"
            choice = gets.chomp.to_i
            if choice == 1
                @controller.list_tasks
            elsif choice == 2
                @controller.add_task
            elsif choice == 3 
                @controller.mark_task_as_completed
            else 
                puts "Wrong input..."
            end
        end
    end
end