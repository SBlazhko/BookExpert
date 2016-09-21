Rails.application.routes.draw do

  get 'profile', to: "users#show"
  get 'reviwers', to: "users#index"
  get 'reviwer/:id', to: "users#reviwer_show_page", as: "reviwer_show"

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
	
	post "add_biography", to: "biographies#create"
	put "update_biography", to: "biographies#update"

	post "add_wg", to: "work_genres#create"
	put "update_wg", to: "work_genres#update"
	delete "destroy_wg", to: "work_genres#destroy"
end
