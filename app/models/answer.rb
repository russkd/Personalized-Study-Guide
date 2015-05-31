class Answer < ActiveRecord::Base
# Relationships
    belongs_to :question
    belongs_to :teacher
end
