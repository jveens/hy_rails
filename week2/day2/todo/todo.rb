require 'sinatra'
require 'sinatra/reloader'

class Todo
	attr_accessor :text, :done, :important

	def to_s
		output = self.text
		output
	end
end

TODOS = []

get '/' do
	# erb is a method that will ALWAYs look in the views folder
	erb :todos, locals: { todos: TODOS }
end

post '/add' do
	t = Todo.new
	t.text = params[:todo]
	t.done = false
	t.important = false

	# params this is like a special variable that sinatra gives us, that allows us to take in user input
	TODOS << t
	redirect '/'
end

get '/delete' do
	TODOS.delete_at(params[:todo].to_i)
	redirect '/'
end

get '/done' do
	TODOS[params[:todo].to_i].done = true
	redirect '/'	
end

get '/important' do
	TODOS[params[:todo].to_i].important = true
	redirect '/'
end

get '/sort' do
	TODOS.sort{ |todo, todo2| todo.important <=> todo2.important }
	redirect '/'
end

