MongoidUser::Application.routes.draw do
  root :to => 'users#index'

  resources :categories
end
