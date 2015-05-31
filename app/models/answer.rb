class Answer < ActiveRecord::Base
# Relationships
    has_many :questionanswers
    has_many :questions, through: :questionanswers
    belongs_to :teacher
end
