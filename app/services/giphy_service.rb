class GiphyService

  def self.search(query)
    response = self.get("/v1/gifs/search", q: query)
    formatted_response(JSON.parse(response.body)['data'])
  end

  def self.find(id)
    response = self.get("/v1/gifs/#{id}")
    formatted_response(JSON.parse(response.body)['data'])
  end

  protected

    def self.formatted_params(options)
      params = { api_key: "dc6zaTOxFJmzC", limit: 12 }.merge(options)
    end

    def self.formatted_response(response_body)
      if response_body.is_a?(Array)
        response_body.map { |item| JSON.parse(item.to_json, object_class: GiphyImage) }
      else
        JSON.parse(response_body.to_json, object_class: GiphyImage)
      end
    end

    def self.get(url, options={})
      conn.get do |r|
        r.url url
        r.params = formatted_params(options)
      end
    end

    def self.conn
      @conn ||= Faraday.new(url: "http://api.giphy.com")
    end
end
