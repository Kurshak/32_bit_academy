# frozen_string_literal: true

class GetTasksController < ApplicationController
  def by_course
    groups = Course.find_by_id(params[:course_id]).groups
    @tasks = Task.where(group_id: groups.ids)
    render json: @tasks.to_json
  end

  def by_theme
    subthemes = Theme.find_by_id(params[:theme_id]).subtheme
    @tasks = Task.where(subtheme_id: subthemes.ids)
    render json: @tasks.to_json
  end

  def by_subtheme
    @tasks = Task.where(subtheme_id: params[:subtheme_id])
    render json: @tasks.to_json
  end

  def by_student
    @tasks = Task.where(user_id: params[:user_id], group_id: params[:user_id])
    render json: @task.to_json
  end

  def by_group
    @tasks = Task.where(group_id: params[:user_id])
    render json: @task.to_json
  end

  def by_pack
    pack = PackOfTask.find_by_id(params[:pack_id])
    @tasks = pack.tasks
    render json: @task.to_json
  end
end
