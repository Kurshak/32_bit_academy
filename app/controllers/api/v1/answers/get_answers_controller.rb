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

        def processing_answer
          tasks = Task.where(is_auto_check: true)
          given_task = GivenTask.where(task_id: tasks.ids)
          answer = Answer.where(state_of_cheking: 0, given_task_id: given_task.ids).first
          if answer == nil
            render json: "no_answers"
          else
            task_id = GivenTask.select(:task_id).where(id: answer.given_task_id)
            tests = Test.where(task_id: task_id)
            proc_ans = ProcessingAnswer.new
            proc_ans.pathToAnswer = answer.code_file
            proc_ans.tests = tests
            answer.state_of_cheking = 1
            answer.save
            json_string = ProcessingAnswerSerializer.new(proc_ans).to_h
            render json: json_string
          end
        end

        def post_test_result
          answer = Answer.where(state_of_cheking: 1).first
          answer.automatic_evaluation = params[:json_result].tr('\'', '"')
          answer.state_of_cheking = 2
          answer.save
          render json: :ok, status: :ok
        end
      end
    end
  end
end
