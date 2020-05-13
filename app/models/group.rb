class Group < ApplicationRecord
	belongs_to :course, class_name: 'Course', foreign_key: 'course_id'
	belongs_to :user, class_name: 'User', foreign_key: 'user_id'
	has_many :students_in_groups
	has_many :lessons
	has_many :payments
	has_many :given_tasks
end
