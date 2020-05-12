# frozen_string_literal: true

class Lesson < ApplicationRecord
  has_many :attendances
  belongs_to :group, class_name: 'Groups', foreign_key: 'group_id'
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
end
