class StudentsController < ApplicationController

    # return JSON data representing a list of all students
    def index
        students = Student.all
        render json: students
    end

    # handles grade route
    # return JSON data representing a list of all students, ordered by grade from highest to lowest
    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    # handles highest_grade route
    # return JSON data representing the one student with the highest grade
    def highest_grade
        student = Student.order(grade: :desc).first
        render json: student
    end
end
