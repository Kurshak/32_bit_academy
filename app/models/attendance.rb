class Attendance < ApplicationRecord
    belongs_to :lesson, class_name: 'Lesson', foreign_key: 'lesson_id'
    belongs_to :student, class_name: 'Student', foreign_key: 'student_id'
end
