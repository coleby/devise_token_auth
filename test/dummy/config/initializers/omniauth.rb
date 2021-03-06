# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do |b|
  provider :github,        ENV['GITHUB_KEY'],   ENV['GITHUB_SECRET'],   scope: 'email,profile'
  provider :facebook,      ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :google_oauth2, ENV['GOOGLE_KEY'],   ENV['GOOGLE_SECRET']
  provider :developer,
    :fields => [:first_name, :last_name],
    :uid_field => :last_name
end
