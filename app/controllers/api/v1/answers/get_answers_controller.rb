# frozen_string_literal: true

class GetAnswersController < ApplicationController
  def by_student
    task = Tasks.find_by_id(params[:task_id])
    given_tasks = GivenTasks.where(task_id: task.ids, student_id: params[:student_id])
    @answers = Answers.where(given_task_id: given_tasks.ids)
    render json: @answer.to_json
  end

  def by_task
    task = Tasks.find_by_id(params[:task_id])
    given_tasks = GivenTasks.where(task_id: task.ids)
    @answers = Answers.where(given_task_id: given_tasks.ids)
    render json: @answer.to_json
  end
end
