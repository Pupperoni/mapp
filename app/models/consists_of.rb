class ConsistsOf < ApplicationRecord
  belongs_to :airport, optional: true
  belongs_to :airline_operator, optional: true
end
