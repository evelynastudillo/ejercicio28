Rails.application.routes.draw do
  resources :areas
  resources :companies do
  resources :employees, only: [:create]
  resources :employees, only: [:create, :destroy]
end

  root 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#
# Rails.application.routes.draw do
#   resources :categories do
#     resources :products, only: [:create]
#   end
# root 'categories#index'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
