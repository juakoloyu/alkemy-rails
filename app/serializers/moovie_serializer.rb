class MoovieSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :score
end
