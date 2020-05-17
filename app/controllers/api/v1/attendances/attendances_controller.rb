# frozen_string_literal: true

module Api
    module V1
      module Attendances
        class AttendancesController < ApplicationController
          before_action :set_attendance, only: %i[show update destroy]
  
          def index
            render json: Attendance.all.to_json
          end
  
          def create
            @attendance = Attendance.new(attendance_params)
            if @attendance.save
              show
            else
              render_error :bad_request, @attendance.errors
            end
          end
  
          def show
            render json: @attendance.to_json
          end
  
          def update
            if @attendance.update(attendance_params)
              show
            else
              render_error :bad_request, @attendance.errors
            end
          end
  
          def destroy
            if @attendance.destroy
              render json: :ok, status: :ok
            else
              render_error :bad_request, @attendance.errors
            end
          end
  
          private
  
          def attendance_params
            params.require(:attendance).permit(:lesson_id, :student_id, :is_free, :is_paid, :is_visited, :comment)
          end
  
          def set_attendance
            @attendance = Attendance.find(params[:id])
          end
        end
      end
    end
  end
  