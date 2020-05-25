# frozen_string_literal: true

module Api
  module V1
    module PackOfTasks
      class PackOfTasksController < ApplicationController
        before_action :set_pack_of_task, only: %i[show update destroy]

        def index
          render json: PackOfTask.all.to_json
        end

        def create
          @pack_of_task = PackOfTask.new
          @pack_of_task.user_id = params[:user_id]
          @pack_of_task.name = params[:name]
          @pack_of_task.description = params[:description]
          if @pack_of_task.save
            params[:task_ids].map { |task_id_one| TasksInPack.create pack_of_task_id: @pack_of_task.id, task_id: task_id_one }
            show
          else
            render_error :bad_request, @pack_of_task.errors
          end
        end

        def show
          render json: @pack_of_task.to_json
        end

        def update
          if @pack_of_task.update(params[:user_id], params[:name], params[:description])
            show
          else
            render_error :bad_request, @pack_of_task.errors
          end
        end

        def destroy
          if @pack_of_task.destroy
            render json: :ok, status: :ok
          else
            render_error :bad_request, @pack_of_task.errors
          end
        end

        private

        def pack_of_task_params
          params.permit(:user_id, :name, :description, task_ids: [])
        end

        def set_pack_of_task
          @pack_of_task = PackOfTask.find(params[:id])
        end
      end
    end
  end
  end