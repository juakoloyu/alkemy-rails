class CharacterSerializer < ActiveModel::Serializer
    attributes :image,:name,:weight,:age,:history
    has_many :movies
end
