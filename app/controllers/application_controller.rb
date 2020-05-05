# frozen_string_literal: true

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  def bad_request
    render_error :bad_request, :bad_request
  end
end
