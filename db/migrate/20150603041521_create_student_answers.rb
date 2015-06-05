class CreateStudentAnswers < ActiveRecord::Migration
  def change
    create_table :student_answers do |t|
      t.references :student, index: true, foreign_key: true
      t.references :quizquestion, index: true, foreign_key: true
      t.references :question_answers, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
