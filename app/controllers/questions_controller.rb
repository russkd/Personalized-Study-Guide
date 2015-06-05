class QuestionsController < ApplicationController
    def new

    @question = Question.new
    # This is necessary to avoid a nil.

      if params[:search]

        @answers = Answer.where('LOWER(subject) LIKE (?)', "%#{params[:search].downcase}%")
      else
        @answers = Answer.last(10)
      end
    end

def index
  @questions = Question.all
end

def show
  @user = current_user
  @question = Question.find(params[:id])

  # @question_answer = QuestionAnswer.create
  # @answer = @question_answer
end

def edit
    @question = Question.find(params[:id])
end

def create
    #Answer.find([8,9,10]) returns an array, not an ActiveRecord
    # collection

  @question = Question.new(question_params)
  #answers is an ARRAY of matched answers
  answers = Answer.find(params[:answers_bodies])

    if @question.save
      answers.each do |ans|
        @question.answers << ans
      end
      redirect_to @question
    else
      render 'new'
    end
  end

def update
  @question = Question.find(params[:id])

  if @question.update(question_params)
    redirect_to @question
  else
    render 'edit'
  end
end

def selected_answers
  @question_answer = QuestionAnswer.create
  @answer = @question_answer
  @answer.each do |answ|
    QuestionAnswer.create(question_id: @question.id, question: @question, answer_body: @answer_body, answer_id: answ.to_i)
  end
  redirect_to @question
end

def destroy
  @question = Question.find(params[:id])
  @question.destroy

  redirect_to questions_path
end

private
  def question_params
    params.require(:question).permit(:question, :answer_id, :answer_body, :subject, :answers_bodies => [])

  end
end
