Rails.application.routes.draw do
  get 'topics/index'

  get 'topics/show'

  get 'topics/update'

  get 'topics/delete'

  mount_devise_token_auth_for 'User', at: 'api/auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
