class TestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :order_in_task

  attribute :input do |object|
    object.input.download
  end

  attribute :output do |object|
    object.output.download
  end
end
