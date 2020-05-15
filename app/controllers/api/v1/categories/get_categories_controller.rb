# frozen_string_literal: true

module Api
    module V1
      module Categories
        class GetCategoriesController < ApplicationController
            def by_course
              @categories = Category.where(course_id: params[:course_id])
              render json: @categories.to_json
            end
        end
      end
    end
  end
  