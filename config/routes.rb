Rails.application.routes.draw do
  get 'users/edit'

  get 'users/update'

  resources :events
  resources :items
  root "items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  '/auth/:provider'          => 'omniauth#auth', as: :auth
  get  '/auth/:provider/callback' => 'session#create'
  get  '/auth/failure'            => 'session#failure'

  get  '/login'                   => 'session#new'
  post '/login'                   => 'session#create'
  get  '/logout'                  => 'session#destroy'
end
