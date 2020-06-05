class GivenTask < ApplicationRecord
    belongs_to :task, class_name: 'Task', foreign_key: 'task_id'
    belongs_to :student, class_name: 'Student', foreign_key: 'student_id'
    belongs_to :group, class_name: 'Group', foreign_key: 'group_id'
    has_many :answers

    attr_accessor :name, :answers_count, :unchecked_answers_count
end
