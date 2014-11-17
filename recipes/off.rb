page = maintenance_page

file page do
  action :delete
  backup false
  only_if do
    File.exists?(page)
  end
end

