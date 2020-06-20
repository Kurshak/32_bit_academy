# frozen_string_literal: true

module Api
    module V1
      module Students
        class StudentsController < ApplicationController
          before_action :set_student, only: %i[show update destroy]
  
          def index
            render json: Student.all.to_json
          end

          def create
            @student = Student.new(student_params)
            if @student.save
              show
            else
              #render_error :bad_request, @student.errors
            end
          end

          def show
            render json: @student.to_json
          end

          def student_params
            params.require(:student).permit(:reset_password_token, :reset_password_sent_at, :allow_password_change, :remember_created_at, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email, :login, :name, :fathername, :surname, :gender, :school, :grade, :grade_in_school, :phone_number, :vk, :adress, :region, :started_academy, :birthday, :email, :tokens)
          end
  
          def set_student
            @student = Student.find(params[:id])
          end
        end
      end
    end
  end
  