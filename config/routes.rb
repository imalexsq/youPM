YouPM::Application.routes.draw do
  get "admin" => "admin#index"

  resources :rentbills do
    resources :rentbill_line_items
  end

  #controller :messages do
  #  get "messages" => "messages#index"
  #  get "new" => :new
  #end
  resources :messages

  controller :sessions do
    get "login" => :new
    post "login" => :create
    delete "logout" => :destroy
  end

  resources :work_assignments

  resources :vendors

  resources :property_assets

  resources :property_units

  resources :managers

  get "index/index"

  root to: 'index#index'

  # Test routes for showing bootstrap design suggestions
  get "signup" => "managers#signup"
  get "confirm" => "managers#confirmemail"

  get "portfolio" => "managers#portfolio"

  resources :properties

  resources :ads
  
  get "repost" => "ads#repost"
  
  resources :activities
  
  resources :tenants

  resources :bills

  resources :workorders

  get "completedorder" => "workorders#markcomplete"
end
