Rails.application.routes.draw do
  
  resources :waste
  resources :schedule

  get 'welcome/index'
  root 'welcome#index'

  post 'waste/show'

  get 'schedule/show'

# static routes
  get  'about' => 'static_pages#about'
  get  'contact' => 'static_pages#contact'
  get  'types_of_waste' => 'static_pages#types_of_waste'
  
end