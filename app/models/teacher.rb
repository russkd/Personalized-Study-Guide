class Teacher < User
# Relationships
    has_many :questions
    has_many :answers
    has_many :quizzes

    
  end
