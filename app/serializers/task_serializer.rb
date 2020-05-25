class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :is_auto_check, :task_type, :theme_id
end
