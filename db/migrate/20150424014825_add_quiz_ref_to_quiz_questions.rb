class AddQuizRefToQuizQuestions < ActiveRecord::Migration

  def change
    create_table :quiz_questions do |t|
      t.timestamps null: false
    end
    
    add_reference :quiz_questions, :quiz, index: true, foreign_key: true
  end
end
