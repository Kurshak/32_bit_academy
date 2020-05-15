class Theme < ApplicationRecord
    belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
    has_many :tasks
    has_many :lessons
end
