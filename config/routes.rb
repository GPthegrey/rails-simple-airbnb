Rails.application.routes.draw do
  root "pages#home"
  resources :flats

end
