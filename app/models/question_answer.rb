class QuestionAnswer < ActiveRecord::Base
  belongs_to :question
  belongs_to :answer
  belongs_to :student_answers

  has_many :student_answers
  has_many :students, through: :student_answers
end
