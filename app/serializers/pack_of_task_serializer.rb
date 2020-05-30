class PackOfTaskSerializer
  include FastJsonapi::ObjectSerializer

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

  set_type :pack_of_task
  attributes :id, :user_id, :date_of_creation, :name, :description
  attribute :tasks do |object|
    object.tasks.as_json
  end
end
