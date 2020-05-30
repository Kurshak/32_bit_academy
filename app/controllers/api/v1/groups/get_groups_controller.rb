# frozen_string_literal: true

module Api
    module V1
      module Groups
        class GetGroupsController < ApplicationController
            def by_user
              @groups = Group.where(user_id: params[:user_id])
              render json: @groups.to_json
            end

            def students
              student_ids = StudentsInGroup.select(:student_id).where(group_id: params[:group_id])
              @students = Student.where(id: student_ids)
              render json: @students.to_json
            end
        end
      end
    end
  end
  