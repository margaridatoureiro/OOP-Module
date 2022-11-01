class Task
    attr_reader :title
    def initialize(title)
        @title = title
        @completed = false
    end

    def mark_as_completed
        @completed = true
    end

    def completed?
        return @completed
    end
end