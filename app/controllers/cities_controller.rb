class CitiesController < ApplicationController
	def cityview 
		<% @cities.each do |c| %>
		<% if not @c.nil? %>
			<h1> <%= @c[:name] %></h1>
			<p> 
				The population is <%= @c[:population] %>
				and its landmark is <%= @c[:landmark] %>
				and the temperature is <% @c[:temperature] %> degrees
				Farenheit
			</p>
		<% end %>
		else 
			<p> Try to create a city! </p>
		end
		<% end %>
	end

	def citynew 
		<%= form_with local: true, method: "get" do |form| %>
			City:<br>
			<%= form.text_field :city %> <br>
			Population: <br>
			<%= form.text_field :population %>
			Most Famous Landmark:<br>
			<%= form.text_field :landmark %>
			<br>
			<%= form.submit "Submit" %>
		<% end %>
	end

	def citycreate 
		cit = City.new(citynew)
		cit.save
	end

	def cityupdate([:params])
		 <%= form_with local: true, method: "get" do |form| %>
                        City:<br>
                        <%= form.text_field params[:city] %> <br>
                        Population: <br>
                        <%= form.text_field :population %>
                        Most Famous Landmark:<br>
                        <%= form.text_field :landmark %>
                        <br>
                        <%= form.submit "Submit" %>
                <% end %> 
	end

	def cityupdatetoview
	end
end


