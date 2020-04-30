class Attendance < ApplicationRecord
    belongs_to :lesson, class_name: 'Lessons', foreign_key: 'lesson_id'
    belongs_to :student, class_name: 'Students', foreign_key: 'student_id'
end
