module Request
  module JsonHelpers
    def json_response
      ActiveSupport::JSON.decode response.body
    end
  end
end
