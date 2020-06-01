# frozen_string_literal: true

module Api
    module V1
      module GivenTasks
        class GivenTasksController < ApplicationController
          before_action :set_given_task, only: %i[show update destroy]
  
          def index
            render json: GivenTask.all.to_json
          end
  
          def create
            @given_task = GivenTask.new(given_task_params)
            if @given_task.save
              show
            else
              render_error :bad_request, @given_task.errors
            end
          end
  
          def show
            render json: @given_task.to_json
          end
  
          def update
            if @given_task.update(given_task_params)
              show
            else
              render_error :bad_request, @given_task.errors
            end
          end
  
          def destroy
            if @given_task.destroy
              render json: :ok, status: :ok
            else
              render_error :bad_request, @given_task.errors
            end
          end
  
          private
  
          def set_course; end
  
          def given_task_params
            params.require(:given_task).permit(:task_id, :group_id, :student_id, :date_of_giving, :completed)
          end
  
          def set_given_task
            @given_task = GivenTask.find(params[:id])
          end
        end
      end
    end
  end
  