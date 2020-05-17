# frozen_string_literal: true

module Api
  module V1
    module PackOfTasks
      class GetGroupsController < ApplicationController
        def by_theme
          tasks_id = Theme.where(id: params[:theme_id]).tasks.ids
          @packs_of_task = PackOfTask.where(task_id: tasks_id)
          render json: @packs_of_task.to_json
        end
      end
    end
  end
end
