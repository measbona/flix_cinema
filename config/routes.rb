Rails.application.routes.draw do
  root 'cinemas#index'
	resources :cinemas do
    resources :reviews
  end
end
