class PackOfTaskSerializer
  include FastJsonapi::ObjectSerializer

  set_type :pack_of_task
  attributes :id, :user_id, :date_of_creation, :name, :description
  attribute :tasks do |object|
    object.tasks.as_json
  end
end
