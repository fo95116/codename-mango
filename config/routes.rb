Mango::Application.routes.draw do

  root to: "feedbacks#index"

  resources :feedbacks
  resources :narratives

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
end
