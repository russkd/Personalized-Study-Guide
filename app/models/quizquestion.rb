class Quizquestion < ActiveRecord::Base
    belongs_to :quiz
    belongs_to :question
    belongs_to :StudentAnswer

    has_many :student_answers
    has_many :students, through: :StudentAnswers

end
