# frozen_string_literal: true

class Lesson < ApplicationRecord
  has_many :attendances
  belongs_to :group, class_name: 'Group', foreign_key: 'group_id'
  belongs_to :themes, class_name: 'Theme', foreign_key: 'themes_id'
end
