Rails.application.routes.draw do
  resources :finishes
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  resources :visual_gabarits
  resources :gabarits
  resources :visual_formats
  resources :dimensions
  resources :formats
  resources :books
  resources :uploads
  resources :articles
  resources :artists
  resources :visuals
  root to: 'visitors#home'
  devise_for :users
  resources :users

  resources :artists do
      member do
        get 'my_visuals'
      end
  end

  resources :visuals do
    member do
      get 'gabarits'
    end
  end

  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  get 'your_visuals' => 'uploads#new'
  get 'concept' => 'visitors#concept'
  get 'finitions' => 'visitors#finitions'
  get 'contact' => 'visitors#contact'
  get 'terms' => 'visitors#terms'

  get 'drawings' => "visuals#drawings"
  get 'photos' => "visuals#photos"
end
