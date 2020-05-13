require "administrate/base_dashboard"

class StudentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    student_parents: Field::HasMany,
    parents: Field::HasMany,
    students_in_groups: Field::HasMany,
    given_tasks: Field::HasMany,
    attendances: Field::HasMany,
    paybacks: Field::HasMany,
    payments: Field::HasMany,
    id: Field::Number,
    provider: Field::String,
    uid: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    allow_password_change: Field::Boolean,
    remember_created_at: Field::DateTime,
    confirmation_token: Field::String,
    confirmed_at: Field::DateTime,
    confirmation_sent_at: Field::DateTime,
    unconfirmed_email: Field::String,
    login: Field::String,
    name: Field::String,
    fathername: Field::String,
    surname: Field::String,
    gender: Field::String,
    school: Field::String,
    grade: Field::String,
    grade_in_school: Field::String,
    phone_number: Field::String,
    vk: Field::String,
    adress: Field::String,
    region: Field::String,
    started_academy: Field::DateTime,
    birthday: Field::DateTime,
    email: Field::String,
    tokens: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :student_parents,
    :parents,
    :students_in_groups,
    :given_tasks,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :student_parents,
    :parents,
    :students_in_groups,
    :given_tasks,
    :attendances,
    :paybacks,
    :payments,
    :id,
    :provider,
    :uid,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :allow_password_change,
    :remember_created_at,
    :confirmation_token,
    :confirmed_at,
    :confirmation_sent_at,
    :unconfirmed_email,
    :login,
    :name,
    :fathername,
    :surname,
    :gender,
    :school,
    :grade,
    :grade_in_school,
    :phone_number,
    :vk,
    :adress,
    :region,
    :started_academy,
    :birthday,
    :email,
    :tokens,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :student_parents,
    :parents,
    :students_in_groups,
    :given_tasks,
    :attendances,
    :paybacks,
    :payments,
    :provider,
    :uid,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :allow_password_change,
    :remember_created_at,
    :confirmation_token,
    :confirmed_at,
    :confirmation_sent_at,
    :unconfirmed_email,
    :login,
    :name,
    :fathername,
    :surname,
    :gender,
    :school,
    :grade,
    :grade_in_school,
    :phone_number,
    :vk,
    :adress,
    :region,
    :started_academy,
    :birthday,
    :email,
    :tokens,
  ].freeze

  # Overwrite this method to customize how students are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(student)
  #   "Student ##{student.id}"
  # end
end
