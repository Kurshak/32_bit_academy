# frozen_string_literal: true

module Api
  module V1
    module Tasks
      class GetTasksController < ApplicationController
        def by_course
          categories = Category.where(course_id: params[:course_id])
          themes = Theme.where(category_id: categories.ids)
          @tasks = Task.where(theme_id: themes.ids)
          render json: @tasks.to_json
        end

        def by_category
          themes = Theme.where(category_id: params[:category_id])
          @tasks = Task.where(theme_id: themes.ids)
          render json: @tasks.to_json
        end

        def by_theme
          @tasks = Task.where(theme_id: params[:theme_id])
          render json: @tasks.to_json
        end

        def by_student
          tasks_ids = GivenTask.select(:task_id).where(student_id: params[:student_id])
          @tasks = Task.where(id: tasks_ids)
          render json: @tasks.to_json
        end

        def by_group
          tasks_ids = GivenTask.select(:task_id).where(group_id: params[:group_id])
          @tasks = Task.where(id: tasks_ids)
          render json: @tasks.to_json
        end

        def by_pack
          tasks_ids = TasksInPack.select(:task_id).where(pack_of_task_id: params[:pack_of_task_id])
          @tasks = Task.where(id: tasks_ids)
          render json: @tasks.to_json
        end

        def by_name
          @tasks = Task.where('name like ?', params[:name])
          render json: @tasks.to_json
        end
      end
    end
  end
end
