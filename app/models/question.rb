class Question < ActiveRecord::Base
# Relationships
    has_many :quizquestions
    has_many :quizzes, through: :quizquestions

    has_many :questionanswers
    has_many :answers, through: :questionanswers

    belongs_to :teacher
end
