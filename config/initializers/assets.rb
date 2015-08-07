Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w(manifest.js manifest.css)
Rails.application.config.assets.initialize_on_precompile = true
