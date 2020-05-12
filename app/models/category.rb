class Subtheme < ApplicationRecord
    has_many :lessons
    belongs_to :theme, class_name: 'Theme', foreign_key: 'theme_id'
end
