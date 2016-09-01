Rails.application.routes.draw do

  root "users#index"
  get "/users/edit" => "users#edit", :as => "edit_user"
  resources :users, :except => [:edit]
  resources :characters
  get 'characters/:id/reroll' => "characters#reroll", :as => "reroll"

  get "/login" => "session#new", :as => "login"
  post "/login" => "session#create"
  delete "/logout" => "session#logout", :as => "logout"

end
