class Situation < ApplicationRecord
  belongs_to :airport, optional: true
end
