class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :category

  has_many :evaluations
end
