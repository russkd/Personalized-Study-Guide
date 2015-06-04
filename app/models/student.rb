class Student < ActiveRecord::Base
  has_many :student_answers
  has_many :QuizQuestion, through: :student_answer

  has_many :student_answers
  has_many :QuestionAnswer, through: :student_answer
end
