class GameHistorySerializer < ActiveModel::Serializer
  attributes :id, :winner, :loser, :created_at
end