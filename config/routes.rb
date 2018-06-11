Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, :only => [:index, :new, :create]
  get  '/products/description/:id' => 'products#description'
  get  '/products/inventory/:id'   => 'products#inventory'
end
