# frozen_string_literal: true

module Api
    module V1
      module PackOfTasks
        class GetPackOfTasksController < ApplicationController
            def by_theme
              theme_id = Theme.select(:id).where(id: params[:theme_id])
              tasks_ids = Task.where(theme_id: theme_id).ids
              pack_of_task_ids = TasksInPack.select(:pack_of_task_id).where(task_id: tasks_ids)
              @pack_of_task = PackOfTask.where(id: pack_of_task_ids)
              render json: @pack_of_task.to_json
            end

            def by_course
              category_ids = Category.select(:id).where(course_id: params[:course_id])
              theme_ids = Theme.select(:id).where(category_id: category_ids)
              tasks_ids = Task.where(theme_id: theme_ids).ids
              pack_of_task_ids = TasksInPack.select(:pack_of_task_id).where(task_id: tasks_ids)
              @pack_of_task = PackOfTask.where(id: pack_of_task_ids)
              render json: @pack_of_task.to_json
            end

            def by_name
              @pack_of_task = PackOfTask.where('name like ?', params[:name])
              render json: @pack_of_task.to_json
            end
        end
      end
    end
  end
  