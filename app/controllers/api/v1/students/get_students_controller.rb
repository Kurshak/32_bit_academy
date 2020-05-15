# frozen_string_literal: true

module Api
    module V1
      module Students
        class GetStudentsController < ApplicationController
            def parents
              parents_ids = StudentToPatrents.select(:parent_id).where(student_id: params[:student_id])
              @parents = Parent.where(id: parents_ids)
              render json: @parents.to_json
            end

            def groups
                student_id_groups_ids = StudentsInGroups.select(:group_id).where(student_id: params[:student_id])
                @groups = Group.where(id: student_id_groups_ids)
                render json: @groups.to_json
              end
        end
      end
    end
  end
  