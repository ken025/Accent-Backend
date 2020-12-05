class BoardPinSerializer < ActiveModel::Serializer
  attributes :id, :board_id, :pin_id
  has_one :board
  has_one :pin
end
