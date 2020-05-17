# frozen_string_literal: true

module Api
  module V1
    module Tasks
      class TasksController < ApplicationController
        before_action :set_task, only: %i[show update destroy]

        def index
          render json: Task.all.to_json
        end

        def create
          @task = Task.new(task_params)
          if @task.save
            show
          else
            render_error :bad_request, @task.errors
          end
        end

        def show
          render json: @task.to_json
        end

        def update
          if @task.update(task_params)
            show
          else
            render_error :bad_request, @task.errors
          end
        end

        def destroy
          if @task.destroy
            render json: :ok, status: :ok
          else
            render_error :bad_request, @task.errors
          end
        end

        private

        def set_course; end

        def task_params
          params.require(:task).permit(:name, :description, :is_auto_check, :task_type, :theme_id)
        end

        def set_task
          @task = Task.find(params[:id])
        end
      end
    end
  end
end
