# frozen_string_literal: true

module Api
    module V1
      module Courses
        class GetCoursesController < ApplicationController
            def all_courses
              courses = Course.all
              courses.map{|course|
                categories = Category.where(course_id: course.id)
                categories.map{|category|
                  themes = Theme.where(category_id: category.id)
                  category.themes = themes
                }
                course.categories = categories
              }
              render json: CourseWithCategoriesAndThemesSerializer.new(courses).to_h
            end
        end
      end
    end
  end
  