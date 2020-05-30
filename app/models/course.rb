class Course < ApplicationRecord
	has_many :groups
	has_many :categories

	accepts_nested_attributes_for :categories
end
