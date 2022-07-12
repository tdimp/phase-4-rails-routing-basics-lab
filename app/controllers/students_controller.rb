class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all
    render json: students.sort_by {|k| k["grade"]}.reverse
  end

  def highest_grade
    students = Student.all
    render json: students.sort_by {|k| k["grade"]}.reverse.first
  end
end
