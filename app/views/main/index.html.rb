<% City.all.each do |c| %>
<% if not c.nil? %>
	<h1> <%= c.name %></h1>
	<p>
		It's <%= c.temperature %>°F
		and it looks like <%= c.description %>
	</p>
<% end %>
<% end %>
