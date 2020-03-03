# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( pages.css )
Rails.application.config.assets.precompile += %w( pages.js )
Rails.application.config.assets.precompile += %w( gals.css )
Rails.application.config.assets.precompile += %w( gals.js )
Rails.application.config.assets.precompile += %w( profil.scss )
Rails.application.config.assets.precompile += %w( login.css )

%w( clients_controller jobs_controller ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js.coffee", "#{controller}.css"]
end
