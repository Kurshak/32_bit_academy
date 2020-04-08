Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  mount_devise_token_auth_for 'Student', at: 'auth'
  as :student do
    # Define routes for Student within this block.
  end

end
