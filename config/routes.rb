Rails.application.routes.draw do
  get 'project/new'
  post 'project/new'
  get 'project/showAll'
  get 'project/show/:id' => 'project#show'
  resources :project
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
