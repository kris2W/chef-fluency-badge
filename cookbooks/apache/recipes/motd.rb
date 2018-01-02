hostname = node['hostname']
file '/etc/motd' do
  content "Hostname: #{hostname}"
end
