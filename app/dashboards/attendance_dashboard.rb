require "administrate/base_dashboard"

class AttendanceDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    lesson: Field::BelongsTo,
    student: Field::BelongsTo,
    id: Field::Number,
    is_free: Field::Boolean,
    is_paid: Field::Boolean,
    is_visited: Field::Boolean,
    comment: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :lesson,
    :student,
    :id,
    :is_free,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :lesson,
    :student,
    :id,
    :is_free,
    :is_paid,
    :is_visited,
    :comment,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :lesson,
    :student,
    :is_free,
    :is_paid,
    :is_visited,
    :comment,
  ].freeze

  # Overwrite this method to customize how attendances are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(attendance)
  #   "Attendance ##{attendance.id}"
  # end
end
