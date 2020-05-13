require "administrate/base_dashboard"

class StudentsInGroupDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    group: Field::BelongsTo,
    student: Field::BelongsTo,
    id: Field::Number,
    started_group: Field::DateTime,
    left_group: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :group,
    :student,
    :id,
    :started_group,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :group,
    :student,
    :id,
    :started_group,
    :left_group,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :group,
    :student,
    :started_group,
    :left_group,
  ].freeze

  # Overwrite this method to customize how students in groups are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(students_in_group)
  #   "StudentsInGroup ##{students_in_group.id}"
  # end
end
