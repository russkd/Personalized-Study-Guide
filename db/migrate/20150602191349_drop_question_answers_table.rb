class DropQuestionAnswersTable < ActiveRecord::Migration
  def change
    drop_table :questionanswers
  end
end
