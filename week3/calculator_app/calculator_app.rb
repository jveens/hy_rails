require 'sinatra'
require 'sinatra/reloader'

class Numero
	attr_accessor :value
end

SUM = 0

get '/' do 
	erb :layout
end

get '/add' do 

	result = Numero.new

	op = params[:operation]

	num1 = params[:a].to_f
	num2 = params[:b].to_f

	result.value = if op == 'add'
		 num1 + num2
	elsif op == 'sub'
		num1 - num2
	elsif op == 'divy'
		num1 / num2
	elsif op == 'multi'
		num1 * num2
	end
	
	SUM = result.value

	redirect '/'
end

# If you ever want to know what's in your params, you can do:
# 	params.to_s
# this will echo out all your parameters in a string (array form)