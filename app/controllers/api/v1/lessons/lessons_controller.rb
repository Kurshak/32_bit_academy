# frozen_string_literal: true

module Api
  module V1
    module Lessons
      class LessonsController < ApplicationController
        before_action :set_lesson, only: %i[show update destroy]

        def index
          render json: Lesson.all.to_json
        end

        def create
          @lesson = Lesson.new(lesson_params)
          if @lesson.save
            show
          else
            render_error :bad_request, @lesson.errors
          end
        end

        def show
          render json: @lesson.to_json
        end

        def update
          if @lesson.update(lesson_params)
            show
          else
            render_error :bad_request, @lesson.errors
          end
        end

        def destroy
          if @lesson.destroy
            render json: :ok, status: :ok
          else
            render_error :bad_request, @lesson.errors
          end
        end

        private

        def lesson_params
          params.require(:lesson).permit(:group_id, :datetime, :comment, :theme_id)
        end

        def set_lesson
          @lesson = Lesson.find(params[:id])
        end
      end
    end
  end
end
