require "administrate/base_dashboard"

class ParentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    student_parents: Field::HasMany,
    students: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    surname: Field::String,
    gender: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    fathersname: Field::String,
    mobile1: Field::String,
    mobile2: Field::String,
    parent_type: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :student_parents,
    :students,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :student_parents,
    :students,
    :id,
    :name,
    :surname,
    :gender,
    :created_at,
    :updated_at,
    :fathersname,
    :mobile1,
    :mobile2,
    :parent_type,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :student_parents,
    :students,
    :name,
    :surname,
    :gender,
    :fathersname,
    :mobile1,
    :mobile2,
    :parent_type,
  ].freeze

  # Overwrite this method to customize how parents are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(parent)
  #   "Parent ##{parent.id}"
  # end
end
