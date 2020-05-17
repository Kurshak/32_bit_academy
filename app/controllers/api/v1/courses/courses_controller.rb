# frozen_string_literal: true

module Api
    module V1
      module Courses
        class CoursesController < ApplicationController
          before_action :set_course, only: %i[show update destroy]
  
          def index
            render json: Course.all.to_json
          end
  
          def create
            @course = Course.new(course_params)
            if @course.save
              show
            else
              render_error :bad_request, @course.errors
            end
          end
  
          def show
            render json: @course.to_json
          end
  
          def update
            if @course.update(course_params)
              show
            else
              render_error :bad_request, @course.errors
            end
          end
  
          def destroy
            if @course.destroy
              render json: :ok, status: :ok
            else
              render_error :bad_request, @course.errors
            end
          end
  
          private
  
          def course_params
            params.require(:course).permit(:name, :description, :shortname)
          end
  
          def set_course
            @course = Course.find(params[:id])
          end
        end
      end
    end
  end
  