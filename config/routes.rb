Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post '/user/create', to: 'user#create'
      post '/user/login', to: 'user#login'
      #get '/user', to: 'user#prueba'

      post '/project/create', to: 'proyect#createProyecjt'
      put '/project/edit/:projectId', to: 'proyect#editProject'
      get '/project/allProject', to: 'proyect#getAllProject'
      get '/project/:projectId', to: 'proyect#getProjectInfo'

      post '/lead/create', to: 'lead#create'
      get '/lead/:projectId', to: 'lead#leadsProject'
    end
  end

end
