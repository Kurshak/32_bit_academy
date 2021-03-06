# frozen_string_literal: true

class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :student_parents
  has_many :parents, through: :student_parents
  has_many :students_in_groups
  has_many :given_tasks
  has_many :attendances
  has_many :paybacks
  has_many :payments

  validates :email, uniqueness: true

  attr_accessor :uncompleted_task_count, :unchecked_answers_count
end
