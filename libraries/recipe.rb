class Chef
  class Recipe
    def maintenance_page
      "#{node[:apache][:document_root]}/shared/system/maintenance.html"
    end

    def maintenance_start
      Time.now
    end

    def maintenance_stop
      period = node[:apache2][:maintenance][:period]
      unit = node[:apache2][:maintenance][:unit]

      period.send(unit).from_now
    end
  end
end
