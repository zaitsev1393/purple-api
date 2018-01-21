Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'api/auth'

  namespace :api, defaults: { format: :json } do
  	namespace :v1 do
      resources :comments, only: [:index, :show, :delete]
  	  resources :topics,   only: [:index, :update, :show, :delete]
  	end
  end
  


end
