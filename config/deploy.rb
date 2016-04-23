# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'cc-portal'
set :repo_url, 'git@github.com:kyonya/cc-portal.git'
set :deploy_to, '/var/www/cc-portal'
set :log_level, :debug

set :linked_dirs, %w{bin log tmp/backup tmp/pids tmp/cache tmp/sockets vendor/bundle}

set :rbenv_type, :user # :system or :user
set :rbenv_ruby, '2.2.3'

#set :bundle_env_variables, { nokogiri_use_system_libraries: 1 }

namespace :deploy do
  desc "Set Environment Values"
  task :set_env_values do
    on roles(:all) do
      within release_path do
        env_config = "/var/www/cc-portal/shared/.env"
        execute :cp, "#{env_config} ./.env"
      end
    end
  end
  desc 'restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
  after 'deploy:publishing', 'deploy:restart'
end
