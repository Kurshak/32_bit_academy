# frozen_string_literal: true

module Api
  module V1
    module Courses
      class GetCoursesController < ApplicationController
        def all_courses
          courses = Course.all
          render json: CourseWithCategoriesAndThemesSerializer.new(courses)
        end
      end
    end
  end
end
