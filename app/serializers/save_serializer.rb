class SaveSerializer < ActiveModel::Serializer
  attributes :id
  has_one :pin
  has_one :user
end
