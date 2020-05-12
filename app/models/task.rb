class Task < ApplicationRecord
    belongs_to :theme, class_name: 'Category', foreign_key: 'category_id'
    has_many :tasks_in_packs
    has_many :given_tasks
    has_many :tests
end
