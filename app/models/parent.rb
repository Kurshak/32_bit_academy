class Parent < ApplicationRecord
    has_many :student_parents
    has_many :students, through: :student_parents
end
