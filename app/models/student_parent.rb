class StudentParent < ApplicationRecord
    belongs_to :parent, class_name: 'Parent', foreign_key: 'parent_id'
    belongs_to :student, class_name: 'Student', foreign_key: 'student_id'

end
