class View
    def ask_user_for_task_title
        puts "What do you want to do?"
        print "> "
        return gets.chomp
    end

    def display(tasks)
        tasks.each_with_index do |task, index|
            input = task.completed? ? "X" : " "
            puts "[#{input}] - #{index + 1} - #{task.title}"
        end
    end

    def ask_user_for_index
        puts "Which task?"
        print "> "
        return gets.chomp.to_i - 1
    end
end
