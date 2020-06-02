 Rails.application.routes.draw do
  get 'sessions/new'
  devise_for :users
	resources :posts do
		resources :comments, :likes
	end

	root 'posts#index'
	get 'tags/:tag', to: 'posts#index', as: :tag
end