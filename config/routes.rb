Rails.application.routes.draw do
  resources :students, only: [:create,:index,:show,:update,:edit,:new]
  resources :school_classes, only: [:create,:index,:show,:update,:edit,:new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
