require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    pack_of_tasks: Field::HasMany,
    groups: Field::HasMany,
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
    surname: Field::String,
    fathername: Field::String,
    birthday: Field::DateTime,
    phone_number: Field::String,
    role: Field::String,
    email: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :pack_of_tasks,
    :groups,
    :id,
    :provider,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :pack_of_tasks,
    :groups,
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
    :surname,
    :fathername,
    :birthday,
    :phone_number,
    :role,
    :email,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :pack_of_tasks,
    :groups,
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
    :surname,
    :fathername,
    :birthday,
    :phone_number,
    :role,
    :email,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
