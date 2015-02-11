class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :posts, except: [:user, :comments, :body]
  has_many :comments, except: [:user]
end
