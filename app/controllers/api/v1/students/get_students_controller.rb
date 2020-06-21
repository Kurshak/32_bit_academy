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
              lesson_ids = Lesson.select(:id).where(group_id: params[:group_id])
              visited_count = Attendance.where(lesson_id: lesson_ids, student_id: params[:student_id], is_visited: true, is_paid: true).count
              payments = Payment.where(student_id: params[:student_id], group_id: params[:group_id])
              payments_count = 0
              payments.map { |payment|
                payments_count += payment.num_of_lessons
              }
              paybacks = Payback.where(student_id: params[:student_id], group_id: params[:group_id])
              payback_count = 0
              paybacks.map { |payback|
                payback_count += payback.num_of_lessons_back
              }
              @residue_count = payments_count - payback_count - visited_count
              render json: @residue_count.to_json
            end

            def passed_themes
              lesson_ids = Attendance.where(student_id: params[:student_id], is_visited: true).pluck(:lesson_id)
              theme_ids = Lesson.where(id: lesson_ids).pluck(:theme_id)
              category_ids = Theme.where(id: theme_ids).pluck(:category_id)
              course_ids = Category.where(id: category_ids).pluck(:course_id)

              themes = Theme.where(id: theme_ids)
              categories = Category.where(id: category_ids)
              courses = Course.where(id: course_ids)

              courses.map{ |course|
                this_categories_ids = []
                categories.map{ |category|
                    this_themes_ids = []

                    themes.map{ |theme|
                    if category.id == theme.category_id
                      this_themes_ids << theme.id
                    end
                  }

                  this_themes = Theme.where(id: this_themes_ids).order(:order_in_theme)
                  category.themes = this_themes

                  if course.id == category.course_id
                    this_categories_ids << category.id
                  end
                }

                this_categories = Category.where(id: this_categories_ids).order(:order_in_cource)
                course.categories = this_categories
              }

              render json: CourseWithCategoriesAndThemesSerializer.new(courses)
            end

            def completed_given_task
              group_ids = GivenTask.select(:group_id).where(student_id: params[:student_id])
              groups = Group.where(id: group_ids)
              groups.map{ |group|
                group.task_count = GivenTask.where(student_id: params[:student_id], group_id: group.id).count
                group.completed_task_count = GivenTask.where(student_id: params[:student_id], group_id: group.id, completed: true).count
                group.uncompleted_task_count = GivenTask.where(student_id: params[:student_id], group_id: group.id, completed: false).count
              }
              json_string = GroupWithCompletedTasksSerializer.new(groups).to_h
              render json: json_string
            end

            def tasks
              given_tasks = GivenTask.where(student_id: params[:student_id])
              given_tasks.map{|given_task|
                task = Task.where(id: given_task.task_id).first
                given_task.name = task.name
                given_task.answers_count = Answer.where(given_task_id: given_task.id).count
                given_task.unchecked_answers_count = Answer.where(given_task_id: given_task.id, teacher_evaluation: "false").count
              }
              render json: StudentGivenTaskSerializer.new(given_tasks).to_h
            end
        end
      end
    end
  end
  