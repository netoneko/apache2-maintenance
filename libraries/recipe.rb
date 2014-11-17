class Chef
  class Recipe
    MAINTENANCE_TIME_FORMAT = '%Y-%m-%dT%H:%M:%S%:z'

    def maintenance_page
      "#{node[:apache][:document_root]}/shared/system/maintenance.html"
    end

    def maintenance_start
      Time.now.strftime(MAINTENANCE_TIME_FORMAT)
    end

    def maintenance_stop
      period = node[:apache2][:maintenance_period]
      unit = node[:apache2][:maintenance_unit]

      period.send(unit).from_now.strftime(MAINTENANCE_TIME_FORMAT)
    end
  end
end
