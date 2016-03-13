Rails.application.routes.draw do
  get "/" => "welcomes#index"
  get "/packages" => "packages#index"
end
