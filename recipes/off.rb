include_recipe 'opsworks_sidekiq::restart'

page = maintenance_page

file page do
  action :delete
  backup false
  only_if do
    File.exists?(page)
  end
end

