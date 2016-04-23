server '160.16.63.20', user: 'gennei', roles: %w{web app}

role :app, %w{gennei@160.16.63.20}
role :web, %w{gennei@160.16.63.20}
role :db, %w{gennei@160.16.63.20}
#role :db,  %w{USER_NAME@IP_ADDRESS}

# Configuration
# =============
set :stage, :production
set :unicorn_rack_env, "production"
set :branch, 'master' # TODO
set :rails_env, 'production'
set :migration_role, 'db'

set :ssh_options, {
    keys: [File.expand_path('~/.ssh/Sakura')],
    forward_agent: true,
    auth_methods: %w(publickey)
}
