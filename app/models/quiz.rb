class Quiz < ActiveRecord::Base
    has_many :quizquestions
    has_many :questions, through: :quizquestions

    has_many :student_quizzes
    has_many :students, through: :student_quizzes

    belongs_to :user

end
