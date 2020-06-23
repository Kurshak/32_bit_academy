# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.14.1'

set :application, '32bita.ru'
set :repo_url, 'git@github.com:Kurshak/32_bit_academy.git'

set :deploy_via, :remote_cache
set :deploy_to, '/home/deploy/projects/32bita.ru'

set :log_level, :info

set :linked_files, %w[config/application.yml puma.rb]
set :linked_dirs, %w[log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/assets]

# for sync
set :assets_dir, 'public/system'
set :local_assets_dir, 'public'
set :db_remote_clean, true
set :disallow_pushing, true

set :keep_releases, 2

set :rvm_type, :user # Defaults to: :auto
set :rvm_ruby_version, 'ruby 2.6.3p62' # Defaults to: 'default'

set :nvm_type, :user
set :nvm_node, 'v12.17.0'
set :nvm_map_bins, %w[node npm yarn]

set :pty, true

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke 'puma:restart'
    end
  end

  after :publishing, :restart
end
