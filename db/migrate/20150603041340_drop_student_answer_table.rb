class DropStudentAnswerTable < ActiveRecord::Migration
  def change
    drop_table :student_answers
  end
end
