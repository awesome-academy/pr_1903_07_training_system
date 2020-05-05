Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  scope "(:locale)", locale: /vi|en/ do
    root "courses#index"
    resources :courses
    resources :lessons, except: :index
  end
end

