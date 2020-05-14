require "administrate/base_dashboard"

class ThemeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    categories: Field::BelongsTo,
    tasks: Field::HasMany,
    lessons: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    order_in_theme: Field::Number,
    categories_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :categories,
    :tasks,
    :lessons,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :categories,
    :tasks,
    :lessons,
    :id,
    :name,
    :description,
    :created_at,
    :updated_at,
    :order_in_theme,
    :categories_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :categories,
    :tasks,
    :lessons,
    :name,
    :description,
    :order_in_theme,
    :categories_id,
  ].freeze

  # Overwrite this method to customize how themes are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(theme)
  #   "Theme ##{theme.id}"
  # end
end
