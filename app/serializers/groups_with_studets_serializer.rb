class GroupsWithStudetsSerializer
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

  attributes :id, :user_id, :course_id, :name, :group_started, :group_closed, :schedule, :active

  attribute :students do |object|
    StudentSerializer.new(object.students).to_h
  end
end
