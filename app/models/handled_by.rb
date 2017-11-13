class HandledBy < ApplicationRecord
  belongs_to :projects
  belongs_to :contractors
end
