class Task < ApplicationRecord
    belongs_to :theme, class_name: 'SubTheme', foreign_key: 'subtheme_id'
    has_many :tasks_in_packs
    has_many :given_tasks
end
