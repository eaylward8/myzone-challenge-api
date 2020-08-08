Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :athletes, only: %i[index show]

  get '/welcome', to: 'welcome#index'
  root 'welcome#index'
end
