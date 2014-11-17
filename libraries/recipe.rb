class Chef
  class Recipe
    def maintenance_page
      "#{node[:apache][:document_root]}/system/maintenance.html"
    end
  end
end
