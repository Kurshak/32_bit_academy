class GivenTask < ApplicationRecord
    belongs_to :task, class_name: 'Task', foreign_key: 'task_id'
    belongs_to :student, class_name: 'Student', foreign_key: 'student_id'
    belongs_to :user, class_name: 'User', foreign_key: 'user_id'
    has_many :answers
end
