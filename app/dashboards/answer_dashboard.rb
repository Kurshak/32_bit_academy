require "administrate/base_dashboard"

class AnswerDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    code_file_attachment: Field::HasOne,
    code_file_blob: Field::HasOne,
    given_task: Field::BelongsTo,
    id: Field::Number,
    date_of_answer: Field::DateTime,
    state_of_cheking: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    automatic_evaluation: Field::String,
    teacher_evaluation: Field::String,
    teacher_comment: Field::String,
    student_comment: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :code_file_attachment,
    :code_file_blob,
    :given_task,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :code_file_attachment,
    :code_file_blob,
    :given_task,
    :id,
    :date_of_answer,
    :state_of_cheking,
    :created_at,
    :updated_at,
    :automatic_evaluation,
    :teacher_evaluation,
    :teacher_comment,
    :student_comment,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :code_file_attachment,
    :code_file_blob,
    :given_task,
    :date_of_answer,
    :state_of_cheking,
    :automatic_evaluation,
    :teacher_evaluation,
    :teacher_comment,
    :student_comment,
  ].freeze

  # Overwrite this method to customize how answers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(answer)
  #   "Answer ##{answer.id}"
  # end
end
