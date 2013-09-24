Novelists::Application.routes.draw do
  root :to => 'library#index'

  get "library/new", :to => 'library#new'
  post "library/create", :to => 'library#create'

  get "library/:id", :to => 'library#novelist'

  get "library/:id/edit", :to => 'library#edit'
  post "library/:id/update", :to => 'library#update'

  get "library/:id/destroy", :to => 'library#destroy'

  get "library/:id/new", :to => 'novel#new'
  post "library/:id/create", :to => 'novel#create'

  get 'library/:novelist_id/:id/edit', :to => 'novel#edit'
  post 'library/:novelist_id/:id/update', :to => 'novel#update'

  get 'library/:novelist_id/:id/destroy', :to => 'novel#destroy'


end
