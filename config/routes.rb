Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root "courses#index"
  devise_for :users
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

