class PinSerializer < ActiveModel::Serializer
  attributes :id, :category, :img_url, :description, :label, :link_to_product
end
