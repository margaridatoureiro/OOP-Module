class Repository # DATABASE
    def initialize
        # STATE
        @tasks = [] # Array of Task instances
    end

    # BEHAVIOUR
    def add_task(task)
        @tasks << task
    end

    def all
        return @tasks
    end

    def find(index)
        return @tasks[index]
    end
end