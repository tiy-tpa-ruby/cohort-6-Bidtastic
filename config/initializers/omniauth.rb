Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_APP_ID'], ENV['TWITTER_APP_SECRET']
end
