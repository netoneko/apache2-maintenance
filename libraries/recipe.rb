class Chef
  class Recipe
    def maintenance_page
      "#{node[:apache][:document_root]}/shared/system/maintenance.html"
    end
  end
end
