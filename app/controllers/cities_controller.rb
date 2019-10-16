class CitiesController < ApplicationController
	def view 
		@city = params[:city]
	end

	def citynew 
		if params[:name] 
			if params[:landmark]
				if params[:population]
 					citycreate(params)
				end
			end
		end
	end

	def citycreate(params)
		cit = City.new(name: params[:name], landmark: params[:landmark], population: params[:population])
		cit.save
		redirect_to "/cities/view"
	end

	def cityupdateget
		if params[:name]
			if (params[:landmark] or params[:population])
				cityupdatepost(params)
			end
		end
	end

	def cityupdatepost(params)
		if City.all[params[:name].to_sym]
			City.all[params[:name].to_sym].update(landmark: params[:landmark], population: params[:population]
		end
		redirect_to "/cities/view"
	end
end


