Kaminari.configure do |config|
  config.default_per_page = 20

  if Rails.env.test?
    config.default_per_page = 2
  end
end
