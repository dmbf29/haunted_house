Rails.application.routes.draw do
  resources :spooky_houses, only: :show do
    resources :monsters, only: [:new, :create]
  end

  resources :monsters, only: :destroy do
    resources :traits, only: [:new, :create]
  end
end
