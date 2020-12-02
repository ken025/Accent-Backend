class UserSerializer < ActiveModel::Serializer
  attributes :username, :name, :email
end
