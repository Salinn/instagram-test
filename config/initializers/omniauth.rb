Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FB_APP_ID'], ENV['FB_APP_SECRET'],
           :scope => 'email,user_birthday,read_stream,user_photos', :display => 'popup'
  provider :instagram, ENV['INSTAGRAM_ID'], ENV['INSTAGRAM_SECRET']
end