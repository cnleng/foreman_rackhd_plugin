module ForemanRackhdPlugin::NodeAPI
  class RackhdService < NodeResource
      def url
            @args[:url] + "/power"
      end

      def reboot
	put({}, "/reboot")
      end

      def kexec(json)
      	put(json, "/kexec(json)"
      end

  end
end
