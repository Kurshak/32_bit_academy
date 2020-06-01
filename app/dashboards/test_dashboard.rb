# frozen_string_literal: true

require 'administrate/base_dashboard'

class TestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    input: Field::ActiveStorage,
    output: Field::ActiveStorage,
    task: Field::BelongsTo,
    order_in_task: Field::Number,
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    input
    output
    ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    input

    output

    task
    id
    order_in_task
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    input
    output
    task
    order_in_task
  ].freeze

  # Overwrite this method to customize how tests are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(test)
  #   "Test ##{test.id}"
  # end
end
