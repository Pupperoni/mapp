class ImplementedBy < ApplicationRecord
  belongs_to :projects
  belongs_to :implementing_offices
end
