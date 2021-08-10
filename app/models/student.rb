class Student < ApplicationRecord
has_many :evaluations
#validates :name, presence: true
#validates_inclusion_of :category, :in => ['Medical Student', 'Resident']
end
