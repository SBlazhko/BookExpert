Rails.application.routes.draw do

  get 'profile', to: "users#show"

  devise_for :users
	root "staticpages#home"

	get "information", to: "staticpages#information"
	get "how_it_works", to: "staticpages#how_it_works"
	get "contact_us", to: "staticpages#contact_us"
	post "contact_us", to: "staticpages#contact_us"
	get "news", to: "news#index"

	resources :news, only: [:create]
	put "news/:id", to: "news#update", as: "update_news"
	delete "news/:id",to: "news#destroy", as: "destoy_news"
	
end
