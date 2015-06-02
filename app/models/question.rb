class Question < ActiveRecord::Base
# Relationships
    has_many :quizquestions
    has_many :quizzes, through: :quizquestions
    belongs_to :user

    has_many :question_answers
    has_many :answers, through: :question_answers

end
