class EvaluationSerializer < ActiveModel::Serializer
  attributes :id, :attending, :competency, :rating, :comment
end
