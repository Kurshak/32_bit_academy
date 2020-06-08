# frozen_string_literal: true

class ThemesSerializer
  include FastJsonapi::ObjectSerializer

  set_type :theme
  attributes :name, :description, :id, :category_id, :order_in_theme
end
