Rails.application.routes.draw do
  resources :static_pages, only: :index
  get 'static_pages/show_photos', to: "static_pages#show_photos", as: :show_photos

  root "static_pages#index"
end
