Rails.application.routes.draw do
  get 'static_pages/home'

  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'profile' => 'users#show', :as => 'user_show'
  get 'profile/map' => 'users#map', :as => 'pet_map'

  resources :thing_types

  # Things
  get 'things/new/:owner_id/:type_id' => 'things#new', :as => 'new_thing'
  resources :things, :except => :new

  root 'static_pages#home'

  # Reporting missing dogs
  namespace :api do
    namespace :v1 do
      match '/gotcha' => 'report_dogs#gotcha', :via => :post
      get '/heel/:id' => 'report_dogs#heel'
    end
  end

end
