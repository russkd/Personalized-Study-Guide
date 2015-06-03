class CreateStudentQuizzes < ActiveRecord::Migration
  def change
    create_table :student_quizzes do |t|
      t.references :student, index: true, foreign_key: true
      t.references :quiz, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
