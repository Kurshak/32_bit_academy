# frozen_string_literal: true

class Test < ApplicationRecord
  has_one_attached :input
  has_one_attached :output
  belongs_to :task, class_name: 'Task', foreign_key: 'task_id'
end
