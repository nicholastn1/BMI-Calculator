Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bmis
      get 'bmis/generate_jwt', to: 'bmis#generate_jwt'
    end
  end
end
