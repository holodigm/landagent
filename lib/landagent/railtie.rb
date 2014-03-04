require "rails/railtie"
module Landagent
	class Railtie < Rails::Railtie

		initializer "Landagent.handle_subdomains" do
			ActiveSupport.on_load(:action_controller) do
				Landagent.set_search_path(@tenant.id) if @tenant = Landagent::Tenant.find_by_subdomain(request.subdomain)
			end
		end

		rake_tasks do
			load "tasks/tenants.rake"
		end

	end
end
