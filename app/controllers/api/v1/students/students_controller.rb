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
              render_error :bad_request, @student.errors
            end
          end
  
          def show
            render json: @student.to_json
          end
  
          def update
            if @student.update(student_params)
              show
            else
              render_error :bad_request, @student.errors
            end
          end
  
          def destroy
            if @student.destroy
              render json: :ok, status: :ok
            else
              render_error :bad_request, @student.errors
            end
          end
  
          private
  
          def student_params
            params.permit(:name, :description, :shortname)
          end
  
          def set_student
            @student = Student.find(params[:id])
          end
        end
      end
    end
  end
  