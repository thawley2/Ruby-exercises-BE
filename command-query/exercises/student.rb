class Student
    def initialize
        @grade = 'C'
        @study_count = 0
    end
    def grade
        @grade
    end
    def study
        @study_count += 1 if @study_count < 2
        # @study_count >= 2 ? @grade = 'A' : @grade = 'B'
        if @study_count == 1
            @grade = 'B'
        elsif @study_count == 2
            @grade = 'A'
        elsif @study_count == -1
            @grade = 'D'
        elsif @study_count == -2
            @grade = 'F'
        else @grade = 'C'
        end
    end
    def slack_off
        @study_count -= 1 if @study_count > -2
        # @study_count <= -2 ? @grade = 'F' : @grade = 'D'
        if @study_count == -1
            @grade = 'D'
        elsif @study_count == -2
            @grade = 'F'
        elsif @study_count == 1
            @grade = 'B'
        elsif @study_count == 2
            @grade = 'A'
        else @grade = 'C'
        end
    end
end