Rails.application.routes.draw do
  root 'repositories#index'
  post '/repositories/download', to: 'repositories#download'
end
