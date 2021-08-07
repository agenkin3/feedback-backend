class Evaluation < ApplicationRecord
belongs_to :student
validates :comment, presence: true
end
