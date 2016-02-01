require 'sinatra'

get '/day' do 
	"The current date is #{Date.today.strftime("%A")}"
end

get '/date' do 
	"The current date is #{Date.today}"
end