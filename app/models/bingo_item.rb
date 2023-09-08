class BingoItem < ApplicationRecord
  validates_presence_of :name
  
  attribute :marked, :boolean, default: false
end
