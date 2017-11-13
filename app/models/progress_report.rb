class ProgressReport < ApplicationRecord
  belongs_to :airline_operator, optional: true
end
