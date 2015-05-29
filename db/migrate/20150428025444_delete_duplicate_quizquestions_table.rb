class DeleteDuplicateQuizquestionsTable < ActiveRecord::Migration
    def change
        drop_table :quiz_questions
    end
end
