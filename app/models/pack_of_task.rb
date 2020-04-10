class PackOfTask < ApplicationRecord
    has_many :tasks_in_packs
    belongs_to :user, class_name: 'User', foreign_key: 'user_id'
end
