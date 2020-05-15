# frozen_string_literal: true

module Api
    module V1
      module Themes
        class GetThemesController < ApplicationController
            def by_category
              @themes = Theme.where(category_id: params[:category_id])
              render json: @themes.to_json
            end
        end
      end
    end
  end
  