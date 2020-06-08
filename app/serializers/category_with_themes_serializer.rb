# frozen_string_literal: true

class CategoryWithThemesSerializer
  include FastJsonapi::ObjectSerializer

  def to_h
    data = serializable_hash

    if data[:data].is_a? Hash
      data[:data][:attributes]

    elsif data[:data].is_a? Array
      data[:data].map { |x| x[:attributes] }

    elsif data[:data].nil?
      nil

    else
      data
    end
  end

  set_type :category
  attributes :id, :course_id, :name, :description, :order_in_cource
  attribute :themes do |object|
    ThemesSerializer.new(object.themes.order(:position, :desc))
  end
end
