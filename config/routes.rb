Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: 'questions#index'

  resources :tests do
    resources :qestions, shallow: true
  end

end