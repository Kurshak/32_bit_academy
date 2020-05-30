class GroupWithCompletedTasksSerializer

  def to_h
    data = serializable_hash

    if data[:data].is_a? Hash
      data[:data][:attributes]

    elsif data[:data].is_a? Array
      data[:data].map{ |x| x[:attributes] }

    elsif data[:data] == nil
      nil

    else
      data
    end
  end

  include FastJsonapi::ObjectSerializer
  attributes :user_id, :course_id, :name, :group_started, :group_closed, :schedule, :active, :task_count, :completed_task_count, :uncompleted_task_count
end
