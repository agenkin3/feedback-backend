class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :year

  has_many :evaluations
end
