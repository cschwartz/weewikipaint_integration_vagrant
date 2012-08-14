git "/home/vagrant/weewikipaint" do
  user "vagrant"
  group "vagrant"
  repository "/weewikipaint-git"
  revision "master"
  action :sync
end

bash "update dependencies" do
  cwd "/home/vagrant/weewikipaint"
  code <<-EOH
    npm i
  EOH
end

