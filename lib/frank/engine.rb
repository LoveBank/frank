module Frank
  class Engine < ::Rails::Engine
    isolate_namespace Frank

    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end

    # to handle migrations to implementing apps
    ## https://blog.pivotal.io/labs/labs/leave-your-migrations-in-your-rails-engines
    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        app.config.paths["db/migrate"] += config.paths["db/migrate"].expanded
      end
    end
  end
end
