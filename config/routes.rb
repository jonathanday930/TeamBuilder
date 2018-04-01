Rails.application.routes.draw do
  post 'project/new'
  post 'project/edit/:id' => 'project#edit'
  post 'project/update/:id' => 'project#update'
  post 'project/basic_search' => 'project#basic_search'
  post 'project/destroy/:id' => 'project#destroy'

  post "skill/create"

  get 'project/new'
  get 'project/showAll'
  get 'project/show/:id' => 'project#show'
  get 'project/edit/:id' => 'project#edit'
  get 'project/update' => 'project#update'
  resources :project
  resources :skill
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
