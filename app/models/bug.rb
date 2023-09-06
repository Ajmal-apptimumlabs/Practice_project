class Bug < ApplicationRecord
  enum status: { new: 0, started: 1, completed: 2 }
  belongs_to :project
  belongs_to :developer
  belongs_to :qa
end
