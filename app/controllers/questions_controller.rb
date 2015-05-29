class QuestionsController < ApplicationController
def new
    @user = current_user
    @question = Question.new
end

def index
  @questions = Question.all
end

def show
    @user = current_user
    @question = Question.find(params[:id])
end

def edit
    @user = current_user
    @question = Question.find(params[:id])
end

def create
  @question = Question.new(question_params)

  if @question.save
      redirect_to @question
  else
      render 'new'
  end
end

def update
  @user = current_user
  @question = Question.find(params[:id])
 
  if @question.update(question_params)
    redirect_to @question
  else
    render 'edit'
  end
end

def destroy
  @user = current_user
  @question = Question.find(params[:id])
  @question.destroy
 
  redirect_to questions_path
end

private
  def question_params
      params.require(:question).permit(:name, :email, :password, :question_name, :question_body, :answer, :subject, :quiz, 
      :password_confirmation)
  end

end


