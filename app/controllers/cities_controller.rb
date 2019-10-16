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
		if not City.all.key?(params[:name].to_sym)
			cit = City.new(name: params[:name], landmark: params[:landmark], population: params[:population])
			cit.save
		end
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


