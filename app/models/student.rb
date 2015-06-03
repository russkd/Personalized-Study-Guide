class Student < ActiveRecord::Base
  has_many :student_quizzes
  has_many :quizzes, through: :student_quizzes
end
