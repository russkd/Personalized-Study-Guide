class Question < ActiveRecord::Base
# Relationships
    has_many :quizquestions
    has_many :quizzes, through: :quizquestions
    belongs_to :teacher
    before_save { self.subject = subject.downcase }
end
