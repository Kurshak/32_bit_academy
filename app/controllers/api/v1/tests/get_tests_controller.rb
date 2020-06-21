# frozen_string_literal: true

module Api
    module V1
      module Tests
        class GetTestsController < ApplicationController
          def by_task
            @tests = Test.where(task_id: params[:task_id])
            render json: TestSerializer.new(@tests)
          end
        end
      end
    end
  end
  