class Answer < ApplicationRecord
    belongs_to :given_task, class_name: 'GivenTask', foreign_key: 'given_task_id'
end
