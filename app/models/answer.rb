class Answer < ActiveRecord::Base
# Relationships
    belongs_to :question
    belongs_to :user

    has_many :question_answers
    has_many :questions, through: :question_answers

end
