class StudentsInGroup < ApplicationRecord
    belongs_to :group, class_name: 'Group', foreign_key: 'group_id'
    belongs_to :student, class_name: 'Student', foreign_key: 'student_id'
end
