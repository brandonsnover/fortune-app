Rails.application.routes.draw do
  get "/fortune", controller: "my_examples", action: "fortune"
  get "/lotto", controller: "my_examples", action: "lotto"
end