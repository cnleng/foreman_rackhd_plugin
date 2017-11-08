require 'rest-client'
require 'json'
class RackHDService

    def initialize(rackhd_url)
      @rackhd_url = rackhd_url
    end

    def update_nodes(end_point, request_body)
      # automatically renders view/foreman_rackhd_plugin/hosts/new_action
      # rackhd_service
      # rackhd_service make API call to RackHD server
      # RestClient.post 'http://example.com/resource', {param1: 'one', nested: {param2: 'two'}}
      RestClient.post @rackhd_url + end_point, JSON.parse(request_body)
    end

    def get_nodes(end_point)
      # automatically renders view/foreman_rackhd_plugin/hosts/new_action
      # rackhd_service
      # rackhd_service make API call to RackHD server
      # RestClient.get 'http://example.com/resource'
      RestClient.post @rackhd_url + end_point
    end
end
