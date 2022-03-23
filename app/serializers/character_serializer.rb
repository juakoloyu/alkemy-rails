class CharacterSerializer < ActiveModel::Serializer
    attributes :image,:name
    has_many :movies
end
