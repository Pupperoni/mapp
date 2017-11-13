class LocatedIn < ApplicationRecord
  belongs_to :airports
  belongs_to :locations
end
