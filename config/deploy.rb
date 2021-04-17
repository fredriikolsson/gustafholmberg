# frozen_string_literal: false

# config valid for current version and patch releases of Capistrano
lock '~> 3.16.0'

set :application, 'gustafholmberg'
set :repo_url, 'https://github.com/fredriikolsson/gustafholmberg/'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, 'deployment/use-capistrano-and-passenger-for-deployment'

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"
set :deploy_to, "/home/deploy/#{fetch :application}"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"
append :linked_files, 'config/master.key'

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
# set :application, "sample_rails_app"

# rbenv
set :rbenv_type, :user
# set :rbenv_path, '/home/deploy/.rbenv'
set :rbenv_ruby, File.read('.ruby-version').strip
# set :rbenv_path, '/usr/bin/rbenv'
set :rbenv_custom_path, '/home/deploy/.rbenv'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} /usr/bin/rbenv exec"

set :rbenv_map_bins, %w[rake gem bundle ruby rails]
