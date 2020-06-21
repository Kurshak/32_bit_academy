# frozen_string_literal: true

module Api
    module V1
      module Tests
        class TestsController < ApplicationController
          before_action :set_test, only: %i[show update destroy]
  
          def index
            render json: Test.all.to_json
          end
  
          def create
            @test = Test.new(test_params)
            if @test.save
              show
            else
              render_error :bad_request, @test.errors
            end
          end
  
          def show
            if @test.present?
              render json: @test.to_json
            else
              render_error :bad_request, @test.errors
            end
          end
  
          def update
            if @test.update(test_params)
              show
            else
              render_error :bad_request, @test.errors
            end
          end
  
          def destroy
            if @test.destroy
              render json: :ok, status: :ok
            else
              render_error :bad_request, @test.errors
            end
          end
  
          private
  
          def set_course; end
  
          def test_params
            params.require(:test).permit(:task_id, :order_in_task, :input, :output)
          end
  
          def set_test
            @test = Test.find(params[:id])
          end
        end
      end
    end
  end
  