# frozen_string_literal: true

class CategoryWithThemesSerializer
  include FastJsonapi::ObjectSerializer

  set_type :category
  attributes :id, :course_id, :name, :description, :order_in_cource
  attribute :themes do |object|
    ThemesSerializer.new(object.themes)
  end
end
