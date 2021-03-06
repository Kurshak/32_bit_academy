# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :pack_of_tasks
  has_many :groups

  validates :email, uniqueness: true

end
