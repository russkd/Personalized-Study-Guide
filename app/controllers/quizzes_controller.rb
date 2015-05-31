class QuizzesController < ApplicationController
    def new
      if params[:search]

        @questions = Question.where('LOWER(subject) LIKE (?)', "%#{params[:search].downcase}%")
      else
        @questions = Question.last(20)
      end
    end

def index
  @quizzes = Quiz.all
end

def show
    @quiz = Quiz.find(params[:id])
end

def edit
    @quiz = Quiz.find(params[:id])
end

def create
    # @quiz
  @quiz = Quiz.new(question_params)

  if @quiz.save
      redirect_to @quiz
  else
      render 'new'
  end
end

def update
  @quiz = Quiz.find(params[:id])

  if @quiz.update(question_params)
    redirect_to @quiz
  else
    render 'edit'
  end
end

def selected_questions
  @quiz = Quiz.create
  @questions = params['questions_names']
  @questions.each do |quest|
    Quizquestion.create(quiz_id: @quiz.id, question_id: quest.to_i)
  end
  redirect_to @quiz
end

def destroy
  @quiz = Quiz.find(params[:id])
  @quiz.destroy

  redirect_to questions_path
end

private
  def question_params
      params.require(:quizzes).permit(:name, :email, :password, :question_name, :question_body, :answer, :answer_body, :subject, :quiz, :teacher_id,

      :password_confirmation)
  end
end
