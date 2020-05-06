# frozen_string_literal: true

class AnswersController < ApplicationController
  before_action :set_answer, only: %i[show update destroy]

  def index
    render json: Answer.all.to_json
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      show
    else
      render_error :bad_request, @answer.errors
    end
  end

  def show
    render json: @answer.to_json
  end

  def update
    if @answer.update(answer_params)
      show
    else
      render_error :bad_request, @answer.errors
    end
  end

  def destroy
    if @answer.destroy
      render json: :ok, status: :ok
    else
      render_error :bad_request, @answer.errors
    end
  end

  private

  def answer_params
    params.permit(:given_task_id, :date_of_answer, :file, :state_of_cheking, :result, :result_description, :teacher_mark)
  end

  def set_answer
    @answer = Answer.find(params[:id])
  end
end
