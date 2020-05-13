class Payment < ApplicationRecord
    belongs_to :student, class_name: 'Student', foreign_key: 'student_id'
    belongs_to :group, class_name: 'Group', foreign_key: 'group_id'
end
