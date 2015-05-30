class AddSubjectToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :subject, :text
  end
end
