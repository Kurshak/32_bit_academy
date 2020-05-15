require "administrate/base_dashboard"

class GivenTaskDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    task: Field::BelongsTo,
    student: Field::BelongsTo,
    group: Field::BelongsTo,
    answers: Field::HasMany,
    id: Field::Number,
    date_of_giving: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    completed: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :task,
    :student,
    :group,
    :answers,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :task,
    :student,
    :group,
    :answers,
    :id,
    :date_of_giving,
    :created_at,
    :updated_at,
    :completed,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :task,
    :student,
    :group,
    :answers,
    :date_of_giving,
    :completed,
  ].freeze

  # Overwrite this method to customize how given tasks are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(given_task)
  #   "GivenTask ##{given_task.id}"
  # end
end
