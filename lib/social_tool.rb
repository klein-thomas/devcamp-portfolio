module SocialTool
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      twitter_credentials = Rails.application.credentials.twitter
      config.consumer_key         = twitter_credentials[:consumer_key]
      config.consumer_secret      = twitter_credentials[:consumer_secret]
      config.access_token         = twitter_credentials[:access_token]
      config.access_token_secret  = twitter_credentials[:access_token_secret]
      puts config.inspect
    end

    client.search('#rails', result_type: 'recent').take(6).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.name}"
    end
  end
end