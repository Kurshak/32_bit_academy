class Lesson < ApplicationRecord
    has_many :attendances
    belongs_to :group, class_name: 'Groups', foreign_key: 'group_id'
    belongs_to :subtheme, class_name: 'SubThemes', foreign_key: 'subtheme_id'
end
