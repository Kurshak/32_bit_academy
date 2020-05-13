require "administrate/base_dashboard"

class PaybackDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    student: Field::BelongsTo,
    id: Field::Number,
    amount: Field::Number.with_options(decimals: 2),
    date: Field::DateTime,
    cause: Field::String,
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
    :id,
    :amount,
    :date,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :student,
    :id,
    :amount,
    :date,
    :cause,
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
    :amount,
    :date,
    :cause,
    :is_cash,
    :comment,
  ].freeze

  # Overwrite this method to customize how paybacks are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(payback)
  #   "Payback ##{payback.id}"
  # end
end
