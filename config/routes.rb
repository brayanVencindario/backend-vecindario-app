Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post '/user/create', to: 'user#create'
      post '/user/login', to: 'user#login'
      get '/user', to: 'user#prueba'
    end
  end

end
