class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_name
      t.text :question_body

      t.timestamps null: false
    end
  end
end
