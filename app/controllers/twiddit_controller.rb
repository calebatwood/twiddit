class TwidditController < ApplicationController

  def index
    @reddit = RedditFetcher.new
    @funny = @reddit.r_funny["data"]["children"][0]["data"]["title"]
    @url_f = @reddit.r_funny["data"]["children"][0]["data"]["url"]
    @programming = @reddit.r_programming["data"]["children"][0]["data"]["title"]
    @url_p = @reddit.r_programming["data"]["children"][0]["data"]["url"]
    @cats = @reddit.r_cats["data"]["children"][1]["data"]["title"]
    @url_c = @reddit.r_cats["data"]["children"][1]["data"]["url"]


    if params[:new_tweet]
      @new_tweet = TweetFetcher.new(params[:new_tweet]).new_tweet
    end
  end



end
