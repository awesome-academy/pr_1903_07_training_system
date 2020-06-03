Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  scope "(:locale)", locale: /vi|en/ do
    root "static_pages#home" 
    get "about", to: "static_pages#about"
    get "contact", to: "static_pages#contact"
    resources :courses
    resources :lessons, except: :index
    resources :homeworks
    resources :homework_details
    resources :course_users
  end
end

