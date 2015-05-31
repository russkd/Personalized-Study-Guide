class Answer < ActiveRecord::Base
# Relationships
<<<<<<< HEAD
    belongs_to :question
=======
    has_many :questionanswers
    has_many :questions, through: :questionanswers
>>>>>>> studentModel
    belongs_to :teacher
end
