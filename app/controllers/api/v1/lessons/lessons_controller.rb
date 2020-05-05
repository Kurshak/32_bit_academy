# frozen_string_literal: true

class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[show update destroy]

  def index
    render json: Lesson.all.to_json
  end

  def create
    @leson = Lesson.new(leson_params)
    if @leson.save
      show
    else
      render_error :bad_request, @leson.errors
    end
  end

  def show
    render json: @leson.to_json
  end

  def update
    if @leson.update(leson_params)
      show
    else
      render_error :bad_request, @leson.errors
    end
  end

  def destroy
    if @leson.destroy
      render json: :ok, status: :ok
    else
      render_error :bad_request, @leson.errors
    end
  end

  private

  def leson_params
    params.permit(:group_id, :datetime, :comment, :subtheme_id)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
