# frozen_string_literal: true

module Api
    module V1
      module Students
        class GetStudentsController < ApplicationController
            def parents
              parents_ids = StudentParent.select(:parent_id).where(student_id: params[:student_id])
              @parents = Parent.where(id: parents_ids)
              render json: @parents.to_json
            end

            def groups
              groups_ids = StudentsInGroup.select(:group_id).where(student_id: params[:student_id])
              @groups = Group.where(id: groups_ids)
              render json: @groups.to_json
            end

            def residue_lesson
              groups_ids = StudentsInGroup.select(:group_id).where(student_id: params[:student_id])
              groups = Group.where(id: groups_ids)
              @lessons = Lesson.where('group_id = ? AND datetime > ?', groups.ids, Date.today)
              render json: @lessons.to_json
            end
        end
      end
    end
  end
  