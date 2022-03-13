class StudentsController < ApplicationController
    def index
        student = Student.all
        render json: student
    end

    def grades
        x = Student.all.sort_by{|s| s[:grade]}.reverse
        render json: x
    end
end