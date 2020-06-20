  # frozen_string_literal: true

module Api
    module V1
      module Attendances
        class GetAttendancesController < ApplicationController
            def by_group
              lessons = Lesson.where(group_id: params[:group_id], :datetime => params[:start_time]..params[:end_time]).order(:datetime)#'datetime >= ? AND datetime <= ?', params[:start_time], params[:end_time])
              render json: LessonsWithAttendancesSerializer.new(lessons).to_h
            end

            def by_student
              lessons = Lesson.where(group_id: params[:group_id], :datetime => params[:start_time]..params[:end_time])#'datetime >= ? AND datetime <= ?', params[:start_time], params[:end_time])
              render json: LessonsWithAttendancesSerializer.new(lessons).to_h
            end
        end
      end
    end
  end
  