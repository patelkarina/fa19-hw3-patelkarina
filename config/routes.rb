Rails.application.routes.draw do
  	root "main#index"
	get "/cities/view", to: "cities#view"
  	get "/cities/citynew", to: "cities#citynew"
  	post "/cities/citycreate", to: "cities#citycreate"
  	get "/cities/update", to: "cities#cityupdateget"
  	post "/cities/update", to: "cities#cityupdatepost"
end
