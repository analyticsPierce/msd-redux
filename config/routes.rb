# == Route Map
#
#     Prefix Verb URI Pattern           Controller#Action
#            GET  /                     welcomes#index
#   packages GET  /packages(.:format)   packages#index
# send_email POST /send_email(.:format) welcome#send_email
#       page GET  /pages/*id            high_voltage/pages#show
#

Rails.application.routes.draw do
  get "/" => "welcomes#index"
  get "/packages" => "packages#index"
  post 'send_email', to: 'welcomes#send_email'
end
