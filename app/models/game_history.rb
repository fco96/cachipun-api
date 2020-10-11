class GameHistory < ApplicationRecord
  validates_presence_of :winner, :loser
end
