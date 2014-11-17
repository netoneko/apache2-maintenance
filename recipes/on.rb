template_vars = {maintenance_start: maintenance_start, maintenance_end: maintenance_end}

template maintenance_page do
  source 'maintenance.html.erb'
  owner 'root'
  group 'root'
  mode 0644

  variables(template_vars)
end
