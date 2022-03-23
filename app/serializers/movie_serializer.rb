class MovieSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :score
end
