class MovieSerializer < ActiveModel::Serializer
  attributes :image, :title, :created_at
  has_many :characters
end
