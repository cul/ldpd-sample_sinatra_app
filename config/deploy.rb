# config valid for current version and patch releases of Capistrano
lock "~> 3.17.1"

set :instance, 'ldpd'
set :application, "sample_sinatra_app"
set :repo_url, 'git@github.com:cul/ldpd-sample_sinatra_app.git'
set :deploy_name, "#{fetch(:application)}_#{fetch(:stage)}"
set :rvm_ruby_version, fetch(:deploy_name)
set :remote_user, "#{fetch(:instance)}serv"

set :deploy_to,   "/opt/passenger/#{fetch(:instance)}/#{fetch(:deploy_name)}"

# Default value for :linked_files is []
# append  :linked_files,
#         'config/example.yml'

set :passenger_restart_with_touch, true

# Default value for keep_releases is 5
set :keep_releases, 3
