# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin, as: '' do
    #resources :users
    get '/users', to: 'users#index', as: 'admin_users'
    get '/users/new', to: 'users#new', as: 'new_admin_user'
    post '/users', to: 'users#create'
    get '/users/:id', to: 'users#show', as: 'admin_user'
    get '/users/:id/edit', to: 'users#edit', as: 'edit_admin_user'
    patch '/users/:id', to: 'users#update'
    delete '/users/:id', to: 'users#destroy'
        
    #resources :
    get '/students', to: 'students#index', as: 'admin_students'
    get '/students/new', to: 'students#new', as: 'new_admin_student'
    post '/students', to: 'students#create'
    get '/students/:id', to: 'students#show', as: 'admin_student'
    get '/students/:id/edit', to: 'students#edit', as: 'edit_admin_student'
    patch '/students/:id', to: 'students#update'
    delete '/students/:id', to: 'students#destroy'
    #resources :answers
    get '/answers', to: 'answers#index', as: 'admin_answers'
    get '/answers/new', to: 'answers#new', as: 'new_admin_answer'
    post '/answers', to: 'answers#create'
    get '/answers/:id', to: 'answers#show', as: 'admin_answer'
    get '/answers/:id/edit', to: 'answers#edit', as: 'edit_admin_answer'
    patch '/answers/:id', to: 'answers#update'
    delete '/answers/:id', to: 'answers#destroy'
    #resources :attendances
    get '/attendances', to: 'attendances#index', as: 'admin_attendances'
    get '/attendances/new', to: 'attendances#new', as: 'new_admin_attendance'
    post '/attendances', to: 'attendances#create'
    get '/attendances/:id', to: 'attendances#show', as: 'admin_attendance'
    get '/attendances/:id/edit', to: 'attendances#edit', as: 'edit_admin_attendance'
    patch '/attendances/:id', to: 'attendances#update'
    delete '/attendances/:id', to: 'attendances#destroy'
    #resources :categories
    get '/categories', to: 'categories#index', as: 'admin_categories'
    get '/categories/new', to: 'categories#new', as: 'new_admin_category'
    post '/categories', to: 'categories#create'
    get '/categories/:id', to: 'categories#show', as: 'admin_category'
    get '/categories/:id/edit', to: 'categories#edit', as: 'edit_admin_category'
    patch '/categories/:id', to: 'categories#update'
    delete '/categories/:id', to: 'categories#destroy'
    #resources :courses
    get '/courses', to: 'courses#index', as: 'admin_courses'
    get '/courses/new', to: 'courses#new', as: 'new_admin_course'
    post '/courses', to: 'courses#create'
    get '/courses/:id', to: 'courses#show', as: 'admin_course'
    get '/courses/:id/edit', to: 'courses#edit', as: 'edit_admin_course'
    patch '/courses/:id', to: 'courses#update'
    delete '/courses/:id', to: 'courses#destroy'
    #resources :given_tasks
    get '/given_tasks', to: 'given_tasks#index', as: 'admin_given_tasks'
    get '/given_tasks/new', to: 'given_tasks#new', as: 'new_admin_given_task'
    post '/given_tasks', to: 'given_tasks#create'
    get '/given_tasks/:id', to: 'given_tasks#show', as: 'admin_given_task'
    get '/given_tasks/:id/edit', to: 'given_tasks#edit', as: 'edit_admin_given_task'
    patch '/given_tasks/:id', to: 'given_tasks#update'
    delete '/given_tasks/:id', to: 'given_tasks#destroy'
    #resources :groups
    get '/groups', to: 'groups#index', as: 'admin_groups'
    get '/groups/new', to: 'groups#new', as: 'new_admin_group'
    post '/groups', to: 'groups#create'
    get '/groups/:id', to: 'groups#show', as: 'admin_group'
    get '/groups/:id/edit', to: 'groups#edit', as: 'edit_admin_group'
    patch '/groups/:id', to: 'groups#update'
    delete '/groups/:id', to: 'groups#destroy'
    #resources :lessons
    get '/lessons', to: 'lessons#index', as: 'admin_lessons'
    get '/lessons/new', to: 'lessons#new', as: 'new_admin_lesson'
    post '/lessons', to: 'lessons#create'
    get '/lessons/:id', to: 'lessons#show', as: 'admin_lesson'
    get '/lessons/:id/edit', to: 'lessons#edit', as: 'edit_admin_lesson'
    patch '/lessons/:id', to: 'lessons#update'
    delete '/lessons/:id', to: 'lessons#destroy'
    #resources :pack_of_tasks
    get '/pack_of_tasks', to: 'pack_of_tasks#index', as: 'admin_pack_of_tasks'
    get '/pack_of_tasks/new', to: 'pack_of_tasks#new', as: 'new_admin_pack_of_task'
    post '/pack_of_tasks', to: 'pack_of_tasks#create'
    get '/pack_of_tasks/:id', to: 'pack_of_tasks#show', as: 'admin_pack_of_task'
    get '/pack_of_tasks/:id/edit', to: 'pack_of_tasks#edit', as: 'edit_admin_pack_of_task'
    patch '/pack_of_tasks/:id', to: 'pack_of_tasks#update'
    delete '/pack_of_tasks/:id', to: 'pack_of_tasks#destroy'
    #resources :parents
    get '/parents', to: 'parents#index', as: 'admin_parents'
    get '/parents/new', to: 'parents#new', as: 'new_admin_parent'
    post '/parents', to: 'parents#create'
    get '/parents/:id', to: 'parents#show', as: 'admin_parent'
    get '/parents/:id/edit', to: 'parents#edit', as: 'edit_admin_parent'
    patch '/parents/:id', to: 'parents#update'
    delete '/parents/:id', to: 'parents#destroy'
    #resources :paybacks
    get '/paybacks', to: 'paybacks#index', as: 'admin_paybacks'
    get '/paybacks/new', to: 'paybacks#new', as: 'new_admin_payback'
    post '/paybacks', to: 'paybacks#create'
    get '/paybacks/:id', to: 'paybacks#show', as: 'admin_payback'
    get '/paybacks/:id/edit', to: 'paybacks#edit', as: 'edit_admin_payback'
    patch '/paybacks/:id', to: 'paybacks#update'
    delete '/paybacks/:id', to: 'paybacks#destroy'
    #resources :payments
    get '/payments', to: 'payments#index', as: 'admin_payments'
    get '/payments/new', to: 'payments#new', as: 'new_admin_payment'
    post '/payments', to: 'payments#create'
    get '/payments/:id', to: 'payments#show', as: 'admin_payment'
    get '/payments/:id/edit', to: 'payments#edit', as: 'edit_admin_payment'
    patch '/payments/:id', to: 'payments#update'
    delete '/payments/:id', to: 'payments#destroy'
    #resources :student_parents
    get '/student_parents', to: 'student_parents#index', as: 'admin_student_parents'
    get '/student_parents/new', to: 'student_parents#new', as: 'new_admin_student_parent'
    post '/student_parents', to: 'student_parents#create'
    get '/student_parents/:id', to: 'student_parents#show', as: 'admin_student_parent'
    get '/student_parents/:id/edit', to: 'student_parents#edit', as: 'edit_admin_student_parent'
    patch '/student_parents/:id', to: 'student_parents#update'
    delete '/student_parents/:id', to: 'student_parents#destroy'
    #resources :students_in_groups
    get '/students_in_groups', to: 'students_in_groups#index', as: 'admin_students_in_groups'
    get '/students_in_groups/new', to: 'students_in_groups#new', as: 'new_admin_students_in_group'
    post '/students_in_groups', to: 'students_in_groups#create'
    get '/students_in_groups/:id', to: 'students_in_groups#show', as: 'admin_students_in_group'
    get '/students_in_groups/:id/edit', to: 'students_in_groups#edit', as: 'edit_admin_students_in_group'
    patch '/students_in_groups/:id', to: 'students_in_groups#update'
    delete '/students_in_groups/:id', to: 'students_in_groups#destroy'
    #resources :tasks
    get '/tasks', to: 'tasks#index', as: 'admin_tasks'
    get '/tasks/new', to: 'tasks#new', as: 'new_admin_task'
    post '/tasks', to: 'tasks#create'
    get '/tasks/:id', to: 'tasks#show', as: 'admin_task'
    get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_admin_task'
    patch '/tasks/:id', to: 'tasks#update'
    delete '/tasks/:id', to: 'tasks#destroy'
    #resources :tasks_in_packs
    get '/tasks_in_packs', to: 'tasks_in_packs#index', as: 'admin_tasks_in_packs'
    get '/tasks_in_packs/new', to: 'tasks_in_packs#new', as: 'new_admin_tasks_in_pack'
    post '/tasks_in_packs', to: 'tasks_in_packs#create'
    get '/tasks_in_packs/:id', to: 'tasks_in_packs#show', as: 'admin_tasks_in_pack'
    get '/tasks_in_packs/:id/edit', to: 'tasks_in_packs#edit', as: 'edit_admin_tasks_in_pack'
    patch '/tasks_in_packs/:id', to: 'tasks_in_packs#update'
    delete '/tasks_in_packs/:id', to: 'tasks_in_packs#destroy'
    #resources :tests
    get '/tests', to: 'tests#index', as: 'admin_tests'
    get '/tests/new', to: 'tests#new', as: 'new_admin_test'
    post '/tests', to: 'tests#create'
    get '/tests/:id', to: 'tests#show', as: 'admin_test'
    get '/tests/:id/edit', to: 'tests#edit', as: 'edit_admin_test'
    patch '/tests/:id', to: 'tests#update'
    delete '/tests/:id', to: 'tests#destroy'
    #resources :themes
    get '/themes', to: 'themes#index', as: 'admin_themes'
    get '/themes/new', to: 'themes#new', as: 'new_admin_theme'
    post '/themes', to: 'themes#create'
    get '/themes/:id', to: 'themes#show', as: 'admin_theme'
    get '/themes/:id/edit', to: 'themes#edit', as: 'edit_admin_theme'
    patch '/themes/:id', to: 'themes#update'
    delete '/themes/:id', to: 'themes#destroy'
  
    root to: "users#index"
  end
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
        get  'by_category', controller: 'get_tasks'
        get  'by_student', controller: 'get_tasks'
        get  'by_group', controller: 'get_tasks'
        get  'by_pack', controller: 'get_tasks'
        get  'by_name', controller: 'get_tasks'
      end
      namespace :lessons do
        resources :lessons
      end
      namespace :answers do
        resources :answers
        get  'by_student', controller: 'get_answers'
        get  'by_task', controller: 'get_answers'
      end
      namespace :courses do
        resources :courses
        
      end
      namespace :categories do
        get  'by_course', controller: 'get_categories'
      end
      namespace :themes do
        get  'by_category', controller: 'get_themes'
      end
      namespace :attendances do
        resources :attendances
        get  'by_group', controller: 'get_attendances'
        get  'by_student', controller: 'get_attendances'
      end
      namespace :students do
        resources :students
        get  'parents', controller: 'get_students'
        get  'groups', controller: 'get_students'
        get  'residue_lesson', controller: 'get_students'
      end
      namespace :groups do
        get  'by_user', controller: 'get_groups'
      end
      namespace :pack_of_tasks do
        resources :pack_of_tasks
        get  'by_theme', controller: 'get_pack_of_tasks'
        get  'by_course', controller: 'get_pack_of_tasks'
        get  'by_name', controller: 'get_pack_of_tasks'
      end
    end
  end
end
