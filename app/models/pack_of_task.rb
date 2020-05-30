class PackOfTask < ApplicationRecord
    has_many :tasks_in_packs
    has_many :tasks, through: :tasks_in_packs
    accepts_nested_attributes_for :tasks
end
