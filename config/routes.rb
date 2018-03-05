Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :unidades do
    resources :patios do
      resources :carros
    end
  end
end
