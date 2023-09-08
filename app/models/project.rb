class Project < ApplicationRecord
  belongs_to :manager, class_name: 'User'
  has_many :bugs
end
