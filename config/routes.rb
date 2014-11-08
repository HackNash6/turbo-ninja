Rails.application.routes.draw do
  get 'static_pages/home'

  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'profile' => 'users#show', :as => 'user_show'
  get 'profile/map' => 'users#map', :as => 'pet_map'

  resources :thing_types
  resources :things

  root 'static_pages#home'

  # Reporting missing dogs
  namespace :api do
    namespace :v1 do
      post 'gotcha' => 'reporting_dogs#gotcha'
    end
  end

end
