# frozen_string_literal: true

class GroupWithCompletedTasksSerializer


  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :course_id, :name, :group_started, :group_closed,
             :schedule, :active, :task_count, :completed_task_count,
             :uncompleted_task_count
end
