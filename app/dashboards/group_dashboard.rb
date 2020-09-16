require "administrate/base_dashboard"

class GroupDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    course: Field::BelongsTo,
    user: Field::BelongsTo,
    students_in_groups: Field::HasMany,
    students: Field::HasMany,
    lessons: Field::HasMany,
    payments: Field::HasMany,
    paybacks: Field::HasMany,
    given_tasks: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    group_started: Field::DateTime,
    group_closed: Field::DateTime,
    schedule: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    active: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :course,
    :user,
    :students_in_groups,
    :students,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :course,
    :user,
    :students_in_groups,
    :students,
    :lessons,
    :payments,
    :paybacks,
    :given_tasks,
    :id,
    :name,
    :group_started,
    :group_closed,
    :schedule,
    :created_at,
    :updated_at,
    :active,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :course,
    :user,
    :students_in_groups,
    :students,
    :lessons,
    :payments,
    :paybacks,
    :given_tasks,
    :name,
    :group_started,
    :group_closed,
    :schedule,
    :active,
  ].freeze

  # Overwrite this method to customize how groups are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(group)
  #   "Group ##{group.id}"
  # end
end
