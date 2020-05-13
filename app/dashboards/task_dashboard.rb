require "administrate/base_dashboard"

class TaskDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    theme: Field::BelongsTo,
    tasks_in_packs: Field::HasMany,
    given_tasks: Field::HasMany,
    tests: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    is_auto_check: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    type: Field::Number,
    themes_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :theme,
    :tasks_in_packs,
    :given_tasks,
    :tests,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :theme,
    :tasks_in_packs,
    :given_tasks,
    :tests,
    :id,
    :name,
    :description,
    :is_auto_check,
    :created_at,
    :updated_at,
    :type,
    :themes_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :theme,
    :tasks_in_packs,
    :given_tasks,
    :tests,
    :name,
    :description,
    :is_auto_check,
    :type,
    :themes_id,
  ].freeze

  # Overwrite this method to customize how tasks are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(task)
  #   "Task ##{task.id}"
  # end
end
