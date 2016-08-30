Rails.application.routes.draw do

  root "users#index"
  get "/users/edit" => "users#edit", :as => "edit_user"
  resources :users, :except => [:edit]
  resources :characters

  get "/login" => "session#new", :as => "login"
  post "/login" => "session#create"
  delete "/logout" => "session#logout", :as => "logout"

end
