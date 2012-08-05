git "/home/vagrant/weewikipaint" do
  user "vagrant"
  group "vagrant"
  repository "/weewikipaint-git"
  revision "integration"
  action :sync
end

bash "update dependencies" do
  cwd "/home/vagrant/weewikipaint"
  code <<-EOH
    npm i
  EOH
end

