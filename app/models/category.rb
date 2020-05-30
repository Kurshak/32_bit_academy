class Category < ApplicationRecord
    has_many :themes
    belongs_to :course, class_name: 'Course', foreign_key: 'course_id'

    accepts_nested_attributes_for :themes
end
