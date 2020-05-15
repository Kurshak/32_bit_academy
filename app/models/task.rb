class Task < ApplicationRecord
    belongs_to :theme, class_name: 'Theme', foreign_key: 'theme_id'
    has_many :tasks_in_packs
    has_many :given_tasks
    has_many :tests
end
