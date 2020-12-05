class UserSerializer < ActiveModel::Serializer

  #choosing which data is returned in our frontend
  attributes :id, :username, :name, :email
end
