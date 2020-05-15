# frozen_string_literal: true

module Api
    module V1
      module Groups
        class GetGroupsController < ApplicationController
            def by_user
              @users = Group.where(user_id: params[:user_id])
              render json: @users.to_json
            end
        end
      end
    end
  end
  