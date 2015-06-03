class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(user_params)
      if @student.save
        log_in @student
        flash[:success] = "Good job! You're a student now."
        redirect_to @student
      else
        render 'new'
      end
  end

  def index
    @students = Student.all
  end

  private
    def student_params
      params.require(:student).permit(:name, :email, :password, :question_name, :question_body, :answer, :subject, :quiz,
      :password_confirmation)
    end
end
