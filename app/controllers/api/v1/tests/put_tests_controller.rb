# frozen_string_literal: true

module Api
    module V1
      module Tests
        class PutTestsController < ApplicationController
          def change_order
            tests = Test.where(task_id: params[:task_id])
            if tests.count != params[:tests_ids].size
              render json: "error count tests"
            else
              flag = true
              params[:tests_ids].map{|test_id|
                test = Test.where(id: test_id).first
                if test == nil
                  flag = false
                end
              }
              if flag
                i = 1
                params[:tests_ids].map{|test_id|
                  test = Test.where(id: test_id).first
                  test.order_in_task = i
                  test.save
                  i = i + 1
                }
                render json: :ok, status: :ok
              else
                render json: "error tests_ids"
              end
            end
          end
        end
      end
    end
  end
  