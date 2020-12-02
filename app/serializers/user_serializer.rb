class UserSerializer < ActiveModel::Serializer

  #choosing which data is returned in our frontend
  attributes :username, :name, :email
end
