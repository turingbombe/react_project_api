class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :card_ids, :user_id
  has_many :decks
  has_many :cards
end