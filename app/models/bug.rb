class Bug < ApplicationRecord
  enum status: { new: 0, started: 1, completed: 2 }
  belongs_to :project
  belongs_to :developer, class_name: 'User', optional: true
  belongs_to :qa, class_name: 'User'
end
