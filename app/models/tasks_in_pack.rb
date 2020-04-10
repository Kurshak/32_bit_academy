class TasksInPack < ApplicationRecord
    belongs_to :pack_of_task, class_name: 'PackOfTask', foreign_key: 'pack_of_task_id'
    belongs_to :task, class_name: 'Task', foreign_key: 'task_id'
end
