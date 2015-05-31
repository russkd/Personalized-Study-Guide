class Quiz < ActiveRecord::Base
    has_many :quizquestions
    has_many :questions, through: :quizquestions
    belongs_to :teacher

end
