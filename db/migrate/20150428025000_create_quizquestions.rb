class CreateQuizquestions < ActiveRecord::Migration
  def change
    create_table :quizquestions do |t|
      t.integer :question_id
      t.integer :quiz_id

      t.timestamps null: false
    end
  end
end
