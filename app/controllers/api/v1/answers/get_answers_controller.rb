# frozen_string_literal: true

module Api
  module V1
    module Answers
      class GetAnswersController < ApplicationController
        def by_student
          given_tasks = GivenTask.where(task_id: params[:task_id], student_id: params[:student_id])
          @answers = Answer.where(given_task_id: given_tasks.ids)
          render json: @answers.to_json
        end

        def by_task
          given_tasks = GivenTask.where(task_id: params[:task_id])
          @answers = Answer.where(given_task_id: given_tasks.ids)
          render json: @answers.to_json
        end
      end
    end
  end
end
