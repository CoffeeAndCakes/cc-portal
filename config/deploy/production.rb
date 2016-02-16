set :branch, 'master'

role :app, %w{gennei@160.16.63.20}
role :web, %w{gennei@160.16.63.20}
#role :db,  %w{USER_NAME@IP_ADDRESS}

server '160.16.63.20', user: 'gennei', roles: %w{web app}

set :ssh_options, {
    keys: [File.expand_path('~/.ssh/Sakura')],
    forward_agent: true,
    auth_methods: %w(publickey)
}
