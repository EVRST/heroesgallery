Rails.application.routes.draw do
  resources :upload_gabarits
  resources :customs
  resources :subscriptions
  resources :purchases
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
  resources :orders
  root to: 'visitors#home'
  
  devise_for :users, controllers: { registrations: "registrations" }
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

  resources :uploads do
    member do 
      get 'download'
    end
  end

  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  #for stripe
  resources :charges
  post '/buy/:id', to: 'charges#create', as: :buy

  get 'your_visuals' => 'uploads#new'
  get 'concept' => 'visitors#concept'
  get 'finitions' => 'visitors#finitions'
  get 'contact' => 'visitors#contact'
  get 'terms' => 'visitors#terms'

  get 'drawings' => "visuals#drawings"
  get 'photos' => "visuals#photos"

  get 'shipping' => "visitors#shipping"
  get 'billing' => "visitors#billing"
  get 'checkout' => "visitors#checkout"
end
