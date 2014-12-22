# External JS
Rails.application.config.assets.precompile += %w( lib/handlebars.runtime-v2.0.0.js )
Rails.application.config.assets.precompile += %w( lib/bootstrap-table.js )
Rails.application.config.assets.precompile += %w( lib/bootstrap-table-filter.js )
Rails.application.config.assets.precompile += %w( lib/moment.min.js )

# Internal JS
Rails.application.config.assets.precompile += %w( templates.js )
Rails.application.config.assets.precompile += %w( lobby.js )
Rails.application.config.assets.precompile += %w( welcome.js )

# External CSS
Rails.application.config.assets.precompile += %w( bootstrap-table.css )

# Internal CSS
Rails.application.config.assets.precompile += %w( colors.css )
Rails.application.config.assets.precompile += %w( overrides.css )
Rails.application.config.assets.precompile += %w( lobby.css )
Rails.application.config.assets.precompile += %w( welcome.css )
