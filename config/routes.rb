Rails.application.routes.draw do
  get 'project/new'
  post 'project/new'
  post 'project/edit/:id' => 'project#edit'
  post 'project/updateProject/:id' => 'project#updateProject'

  get 'project/showAll'
  get 'project/show/:id' => 'project#show'
  get 'project/edit/:id' => 'project#edit'
  get 'project/updateProject' => 'project#updateProject'
  resources :project
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
