# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  scope :student do
    mount_devise_token_auth_for 'Student', at: 'auth'
  end
  as :student do
    # Define routes for Student within this block.
  end

  namespace :api do
    namespace :v1 do
      namespace :tasks do
        resources :tasks
        get  'by_course', controller: 'get_tasks'
        get  'by_theme', controller: 'get_tasks'
        get  'by_subtheme', controller: 'get_tasks'
        get  'by_student', controller: 'get_tasks'
        get  'by_group', controller: 'get_tasks'
        get  'by_pack', controller: 'get_tasks'
      end
      namespace :lessons do
        resources :lessons
      end
    end
  end
end
