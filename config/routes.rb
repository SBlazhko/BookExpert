Rails.application.routes.draw do

  get 'profile', to: "users#show"

  devise_for :users
	root "staticpages#home"

	get "information", to: "staticpages#information"
	get "how_it_works", to: "staticpages#how_it_works"
	get "contact_us", to: "staticpages#contact_us"
	post "contact_us", to: "staticpages#contact_us"
	get "news", to: "news#index"
	
end
