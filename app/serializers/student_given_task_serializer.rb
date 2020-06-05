class StudentGivenTaskSerializer
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

  attributes :task_id, :name, :date_of_giving, :completed, :answers_count, :unchecked_answers_count
end
