require "administrate/base_dashboard"

class PaymentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    student: Field::BelongsTo,
    group: Field::BelongsTo,
    id: Field::Number,
    amount: Field::Number.with_options(decimals: 2),
    date: Field::DateTime,
    is_checked: Field::Boolean,
    is_set_for_attendances: Field::Boolean,
    discount: Field::Number,
    num_of_lessons: Field::Number,
    is_cash: Field::Boolean,
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
    :student,
    :group,
    :id,
    :amount,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :student,
    :group,
    :id,
    :amount,
    :date,
    :is_checked,
    :is_set_for_attendances,
    :discount,
    :num_of_lessons,
    :is_cash,
    :comment,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :student,
    :group,
    :amount,
    :date,
    :is_checked,
    :is_set_for_attendances,
    :discount,
    :num_of_lessons,
    :is_cash,
    :comment,
  ].freeze

  # Overwrite this method to customize how payments are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(payment)
  #   "Payment ##{payment.id}"
  # end
end
