# frozen_string_literal: true

module Api
    module V1
      module PackOfTasks
        class GetPackOfTasksController < ApplicationController
            def by_theme
              @theme_ids = params[:theme_id]
              find_theme
            end

            def by_categories
              @theme_ids = Theme.select(:id).where(category_id: params[:category_id])
              find_theme
            end

            def by_course
              category_ids = Category.select(:id).where(course_id: params[:course_id])
              @theme_ids = Theme.select(:id).where(category_id: category_ids)
              find_theme
            end

            def by_name
              @pack_of_tasks = PackOfTask.where('name like ?', params[:name])
              render json: PackOfTaskSerializer.new(@pack_of_tasks)
            end

            private

            def find_theme
              tasks_ids = Task.where(theme_id: @theme_ids).ids
              pack_of_task_ids = TasksInPack.where(task_id: tasks_ids).order(:order_in_pack).pluck(:pack_of_task_id)
              @pack_of_tasks = PackOfTask.where(id: pack_of_task_ids)
              render json: PackOfTaskSerializer.new(@pack_of_tasks)
            end
        end
      end
    end
  end
  