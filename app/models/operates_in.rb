class OperatesIn < ApplicationRecord
  belongs_to :airline_operator, optional: true
  belongs_to :location, optional: true
end
