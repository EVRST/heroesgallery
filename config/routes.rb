Rails.application.routes.draw do
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

  get 'your_visuals' => 'visuals#your_visuals'
  get 'concept' => 'visitors#concept'
  get 'finitions' => 'visitors#finitions'
  get 'contact' => 'visitors#contact'

  get 'drawings' => "visuals#drawings"
  get 'photos' => "visuals#photos"
end
