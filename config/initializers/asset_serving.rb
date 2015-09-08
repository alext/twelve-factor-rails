if Rails.env.production?
  Rails.application.middleware.swap("ActionDispatch::Static", Rack::Static, {
    :urls => [""],
    :root => "public",
    :header_rules => {
      :all => {'Cache-control' => 'public, max_age=1800'},
      %r{-[0-9a-f]{64}\.} => {'Cache-control' => 'public, max_age=31536000'},
    }
  })
end
