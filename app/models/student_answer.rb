class StudentAnswer < ActiveRecord::Base
  belongs_to :student
  belongs_to :QuizQuestion
  belongs_to :QuestionAnswer
end
