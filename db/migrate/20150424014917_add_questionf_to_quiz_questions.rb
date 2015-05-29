class AddQuestionfToQuizQuestions < ActiveRecord::Migration
  def change
    add_reference :quiz_questions, :question, index: true, foreign_key: true
  end
end
