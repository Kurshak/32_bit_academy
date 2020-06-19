# frozen_string_literal: true

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_user!

  def bad_request
    render_error :bad_request, :bad_request
  end
end
