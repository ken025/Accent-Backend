class BoardPinSerializer < ActiveModel::Serializer
  attributes :id
  has_one :boards
  has_one :pin
end
