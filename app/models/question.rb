class Question < ActiveRecord::Base
# Relationships
    has_many :quizquestions
    has_many :quizzes, through: :quizquestions
<<<<<<< HEAD
    belongs_to :teacher
    before_save { self.subject = subject.downcase }
=======

    has_many :questionanswers
    has_many :answers, through: :questionanswers

    belongs_to :user
    before_save { self.subject = subject }
>>>>>>> studentModel
end
