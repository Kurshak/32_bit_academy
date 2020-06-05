# frozen_string_literal: true

module Api
    module V1
      module Groups
        class GetGroupsController < ApplicationController
            def by_user
              @groups = Group.where(user_id: params[:user_id])
              @groups.map{|group|
                user = User.where(id: group.user_id).first
                group.user = user
              }
              render json: GroupsWithUserSerializer.new(@groups).to_h
            end

            def students
              student_ids = StudentsInGroup.select(:student_id).where(group_id: params[:group_id])
              @students = Student.where(id: student_ids)
              render json: @students.to_json
            end

            def completed_tasks
              group = Group.where(id: params[:group_id]).first
              students_ids = StudentsInGroup.select(:student_id).where(group_id: group.id)
              students = Student.where(id: students_ids)
              students.map{|student|
                student.uncompleted_task_count = GivenTask.where(group_id: group.id, student_id: student.id, completed: false).count
                given_task = GivenTask.where(student_id: student.id)
                student.unchecked_answers_count = Answer.where(given_task_id: given_task.ids, teacher_evaluation: "false").count
              }
              group.students = students
              render json: GroupsWithStudetsSerializer.new(group).to_h
            end
        end
      end
    end
  end
  