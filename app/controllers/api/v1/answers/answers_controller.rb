# frozen_string_literal: true

module Api
  module V1
    module Answers
      class AnswersController < ApplicationController
        before_action :set_answer, only: %i[show update destroy]

        def index
          render json: Answer.all.to_json
        end

        def create
          @answer = Answer.new(answer_params)
          if @answer.save
            task_id = GivenTask.select(:task_id).where(id: params[:given_task_id])
            task = Task.where(id: task_id).first
            if task.is_auto_check?
              pidof = %x(pidof testing_app)
              if pidof.empty?
                Thread.new { system("/home/asus/diplom/testing_app/testing_app") }
              end
            end
            show
          else
            render_error :bad_request, @answer.errors
          end
        end

        def show
          render json: @answer.to_json
        end

        def update
          if @answer.update(answer_params)
            show
          else
            render_error :bad_request, @answer.errors
          end
        end

        def destroy
          if @answer.destroy
            render json: :ok, status: :ok
          else
            render_error :bad_request, @answer.errors
          end
        end

        private

        def answer_params
          params.require(:answer).permit(:given_task_id, :date_of_answer, :code_file, :state_of_cheking, :automatic_evaluation, :teacher_evaluation, :teacher_comment, :student_comment)
        end

        def set_answer
          @answer = Answer.find(params[:id])
        end
      end
    end
  end
end
