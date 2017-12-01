module EnotasNfe
  module Request
    include Connection
  
    def get(path, body = {})
      request(:get, path, body)
    end

    def post(path, body = {})
      request(:post, path, body)
    end

    def delete(path, body = {})
      request(:delete, path, body)
    end

    private

    def request(method, path, body)
      body_serialized = serialize_body(body)

      response = connection.send(method) do |request|
        path = URI.encode(path)

        case method
        when :get, :delete
          request.url(path, body_serialized)
        when :post
          request.path = path
          puts request.body = body_serialized.to_json
          request.headers
        end
      end

      response.body
    end

    def serialize_body(body)
      VirtusConvert.new(body, reject_nils: true).to_hash
    end

  end
end