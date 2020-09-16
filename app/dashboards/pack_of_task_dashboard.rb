require "administrate/base_dashboard"

class PackOfTaskDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    tasks_in_packs: Field::HasMany,
    tasks: Field::HasMany,
    id: Field::Number,
    user_id: Field::Number,
    date_of_creation: Field::DateTime,
    name: Field::String,
    description: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :tasks_in_packs,
    :tasks,
    :id,
    :user_id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :tasks_in_packs,
    :tasks,
    :id,
    :user_id,
    :date_of_creation,
    :name,
    :description,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :tasks_in_packs,
    :tasks,
    :user_id,
    :date_of_creation,
    :name,
    :description,
  ].freeze

  # Overwrite this method to customize how pack of tasks are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(pack_of_task)
  #   "PackOfTask ##{pack_of_task.id}"
  # end
end
