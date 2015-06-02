class Answer < ActiveRecord::Base
# Relationships
    belongs_to :question
    belongs_to :user

    has_many :questionanswers
    has_many :questions, through: :questionanswers

end
