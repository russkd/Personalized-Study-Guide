class AnswersController < ApplicationController
  def new
      @user = current_user
      @answer = Answer.new
  end

  def index
    @answers = Answer.all
  end

  def show
      @user = current_user
      @answer = Answer.find(params[:id])
  end

  def edit
      @answer = Answer.find(params[:id])
      if current_user.id == @answer.user_id
        @user = current_user
      else
        flash[:danger] = "You are not authorized to edit this answer."
        redirect_to answer_path
      end
  end

  def create
    @answer = current_user.answers.new(answer_params)

    if @answer.save
        redirect_to @answer
    else
        render 'new'
    end
  end

  def update
  @answer = Answer.find(params[:id])
    if current_user.id == @answer.user_id
      @user = current_user
      @answer = Answer.find(params[:id])

      if @answer.update(answer_params)
        redirect_to @answer
      else
        render 'edit'
      end

    else
      flash[:danger] = "You are not authorized to change this answer."
      redirect_to root_path
    end
  end

  def destroy
    @user = current_user
    @answer = Answer.find(params[:id])
    if current_user.id == @answer.user_id
      @answer.destroy
      redirect_to answers_path
    else
      flash[:danger] = "You are not authorized to delete this answer."
      redirect_to answer_path
    end
  end

  private
    def answer_params
        params.require(:answer).permit(:name, :email, :password, :question_id, :question_name, :question_body, :answer_id, :answer_body, :subject, :quiz, :user_id, :password_confirmation)
    end

end
