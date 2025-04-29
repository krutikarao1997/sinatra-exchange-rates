require "./app"

ENV["EXCHANGE_RATE_KEY"] = "6069b11e44c9f01bfbd63f1f29366f15"

configure :development do
  # we would also like a nicer error page in development
  require "better_errors"
  require "binding_of_caller"

  # need this configure for better errors
  use(BetterErrors::Middleware)
  BetterErrors.application_root = __dir__
  BetterErrors::Middleware.allow_ip!("0.0.0.0/0.0.0.0")
end
