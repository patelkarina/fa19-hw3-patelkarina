

Rails.application.routes.draw do
	get '/cityview', to: 'cities#view'
	get '/citynew', to: 'cities#new'
	post '/citycreate', to: 'cities#create'
	post '/citycreate', to: 'cities#view'
	get '/cityupdate', to: 'cities#update'
	post '/cityupdatetoview', to: 'cities#view'
end
