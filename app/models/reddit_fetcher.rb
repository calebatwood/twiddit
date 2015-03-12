class RedditFetcher

  def initialize
    @reddit_connection = Faraday.new(:url => "http://www.reddit.com") do |faraday|
      faraday.request :url_encoded
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
    end
  end

  def r_funny
    response = @reddit_connection.get do |req|
      req.url "/r/funny.json"
      req.headers['Content-Type'] = 'application/json'
    end

    JSON.parse(response.body)

  end

end




end
