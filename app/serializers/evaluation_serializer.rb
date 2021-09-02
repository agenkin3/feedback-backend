class EvaluationSerializer < ActiveModel::Serializer
  attributes :id, :attending, :competency, :rating, :comment, :student_id
end
