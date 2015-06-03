class MultipleChangesToQuestionTable < ActiveRecord::Migration
  change_table :questions do |t|
    t.remove :question_name, :answer
    t.rename :question_body, :question
  end
end
