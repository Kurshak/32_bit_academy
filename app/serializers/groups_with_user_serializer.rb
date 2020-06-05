class GroupsWithUserSerializer
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

  attributes :id, :course_id, :user_id, :name, :schedule, :group_started, :group_closed, :active

  attribute :user do |object|
    object.user.as_json
  end
end
