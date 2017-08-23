Rails.application.routes.draw do
  resources :locations do
    resources :point_of_interests
  end
end
