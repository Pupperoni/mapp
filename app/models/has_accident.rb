class HasAccident < ApplicationRecord
  belongs_to :aircraft
  belongs_to :situation
end
