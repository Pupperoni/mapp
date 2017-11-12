class HappenedAt < ApplicationRecord
  belongs_to :situation
  belongs_to :location
end
