package 'nginx' do
  action :install
end

template '/etc/nginx/sites-available/default' do
  source 'loadbalancer.conf.erb'
  variables({
    :upstream_servers => node[:nginx][:upstream_servers]
  })
end

service 'nginx' do
  action [:restart]
end