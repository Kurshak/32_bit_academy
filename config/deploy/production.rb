server '32bita.ru', user: 'deploy', roles: %w[app web db]

set :branch, 'master'

set :rails_env, 'production'