class User < ApplicationRecord
    enum role: { user: 0, admin: 1, moderator: 2 }
        has_many :projects, foreign_key: 'manager_id'
        has_many :assigned_bugs, class_name: 'Bug', foreign_key: 'developer_id'
        has_many :created_bugs, class_name: 'Bug', foreign_key: 'qa_id'
end

  