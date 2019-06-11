Rails.application.routes.draw do

  get 'school_classes/index'

  get 'school_classes/new'

  get 'school_classes/show'

  get 'school_classes/edit'

  get 'school_classes/create'

  get 'school_classes/update'

  get 'students/index'

  get 'students/show'

  get 'students/edit'

  get 'students/create'

  get 'students/new'

  get 'students/update'

  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]
  resources :students, only: [:index, :show, :new, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
