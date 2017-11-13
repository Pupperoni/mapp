class LocatedIn < ApplicationRecord
  belongs_to :airport, optional: true
  belongs_to :location, optional: true
end
