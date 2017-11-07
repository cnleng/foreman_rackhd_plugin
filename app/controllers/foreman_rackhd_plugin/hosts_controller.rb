module ForemanRackhdPlugin
  # Example: Plugin's HostsController inherits from Foreman's HostsController
  class HostsController < ::HostsController
    # change layout if needed
    # layout 'foreman_rackhd_plugin/layouts/new_layout'

    def new_action
      # automatically renders view/foreman_rackhd_plugin/hosts/new_action
    end

    def update_nodes
      # automatically renders view/foreman_rackhd_plugin/hosts/new_action
      # rackhd_service
      # rackhd_service make API call to RackHD server
      
      redirect_to "/new_action"
    end
  end
end
