# frozen_string_literal: true

class ThemesSerializer
  include FastJsonapi::ObjectSerializer

  set_type :theme
  attributes :name, :description, :id, :position, :order_in_cource
end
