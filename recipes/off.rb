file maintenance_page do
  action :delete
  backup false
  only_if do
    File.exists?(maintenance_page)
  end
end
