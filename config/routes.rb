Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :enrollments, only: [:index, :show, :create]
      resources :institutions, only: [:index, :show, :create]
      resources :payments, only: [:index, :show]
      resources :students, only: [:index, :show, :create]
    end
  end
end
