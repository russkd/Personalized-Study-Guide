class Quiz < ActiveRecord::Base
    belongs_to :user
    belongs_to :quizquestion
    belongs_to :student_quizzes

    has_many :quizquestions
    has_many :questions, through: :quizquestions
    
    # has_many :student_quizzes
    # has_many :students, through: :student_quizzes


end
