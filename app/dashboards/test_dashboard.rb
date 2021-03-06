require "administrate/base_dashboard"

class TestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    input_attachment: Field::HasOne,
    input_blob: Field::HasOne,
    output_attachment: Field::HasOne,
    output_blob: Field::HasOne,
    task: Field::BelongsTo,
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    order_in_task: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :input_attachment,
    :input_blob,
    :output_attachment,
    :output_blob,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :input_attachment,
    :input_blob,
    :output_attachment,
    :output_blob,
    :task,
    :id,
    :created_at,
    :updated_at,
    :order_in_task,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :input_attachment,
    :input_blob,
    :output_attachment,
    :output_blob,
    :task,
    :order_in_task,
  ].freeze

  # Overwrite this method to customize how tests are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(test)
  #   "Test ##{test.id}"
  # end
end
