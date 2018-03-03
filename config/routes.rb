Rails.application.routes.draw do
  resources :unidades do
    resources :patios
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
