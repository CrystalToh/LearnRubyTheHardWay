require_relative "./gothonweb/version"
require_relative "./map"
require "sinatra"
require "erb"

#module Gothonweb
	# Your code goes here...
	use Rack::Session::Pool

#	get '/' do
# 		greeting = "Hello, World!"
# 		image = ""
#  		erb :index, :locals => {:greeting => greeting, :image => image}
#	end

#	get '/hello' do		
#		greet = params[:greet] || "Hello"
#		name = params[:name] || "Nobody"
#		greeting = "#{greet}, #{name}"
#		erb :index, :locals => {:greeting => greeting}
#	end

#	get '/hello' do
#		erb :hello_form
#	end

#	post '/hello' do
#		greeting = "#{params[:greet] || "Hello"}, #{params[:name] || "Nobody"}"
#		image = params[:image] || ""
#		erb :index, :locals => {:greeting => greeting, :image => image}
#	end

	get '/' do
		# this is used to "setup" the session with starting values
		p START
		session[:room] = START
		redirect("/game")
	end

	get '/game' do
		if session[:room]
			erb :show_room, :locals => {:room => session[:room]}
		else
			# why is this here? do you need it?
			erb	:you_died
		end
	end

	post '/game' do
		action = "#{params[:action] || nil}"
		# there is a bug here, can you fix it?
		if session[:room]
			session[:room] = session[:room].go(params[:action])
		end
		redirect("/game")
	end
#end
