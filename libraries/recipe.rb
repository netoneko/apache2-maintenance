class Chef
  class Recipe
    MAINTENANCE_TIME_FORMAT = '%Y-%m-%dT%H:%M:%S%:z'

    def maintenance_page
      "#{node[:apache][:document_root]}/shared/system/maintenance.html"
    end

    def maintenance_start
      Time.now.strftime(MAINTENANCE_TIME_FORMAT)
    end

    def maintenance_end
      period = node[:apache][:maintenance_period]

      (Time.now + period * 60).strftime(MAINTENANCE_TIME_FORMAT)
    end
  end
end
