class Theme < ApplicationRecord
    belongs_to :categories, class_name: 'Category', foreign_key: 'categories_id'
    has_many :tasks
    has_many :lessons
end
