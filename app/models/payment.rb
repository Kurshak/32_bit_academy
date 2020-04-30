class Payment < ApplicationRecord
    belongs_to :student, class_name: 'Students', foreign_key: 'student_id'
    belongs_to :group, class_name: 'Groups', foreign_key: 'group_id'
end
