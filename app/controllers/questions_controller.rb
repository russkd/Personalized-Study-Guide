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
    @question = Question.find(params[:id])
    if current_user.id == @question.user_id
      @user = current_user
    else
      flash[:danger] = "You are not authorized to edit this question."
      redirect_to question_path
    end
end

def create
  @question = current_user.questions.new(question_params)

  if @question.save
      redirect_to @question
  else
      render 'new'
  end
end

def update
@question = Question.find(params[:id])
  if current_user.id == @question.user_id
    @user = current_user
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end

  else
    flash[:danger] = "You are not authorized to change this question."
    redirect_to root_path
  end
end

def destroy
  @user = current_user
  @question = Question.find(params[:id])
  if current_user.id == @question.user_id
    @question.destroy
  else
    flash[:danger] = "You are not authorized to delete this question."
    redirect_to question_path
  end
end

private
  def question_params
    params.require(:question).permit(:name, :email, :password, :question_id, :question_name, :question_body, :answer_id, :answer_body, :subject, :quiz, :user_id, :password_confirmation)
  end

end
