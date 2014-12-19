require 'sinatra'
require 'pry'
require 'securerandom'
require 'active_record'
require 'mustache'
require 'date'
require 'redcarpet'
require './lib/users.rb'
require './lib/connection.rb'

get '/' do
	html = File.read('./views/index.html')
end

#players
get '/dwill' do
	html = File.read('./views/dwill.html')
end

get '/kg' do
	html = File.read('./views/kg.html')
end

get '/jj' do
	html = File.read('./views/jj.html')
end

get '/brook' do
	html = File.read('./views/brook.html')
end

get '/jack' do
	html = File.read('./views/jack.html')
end

get '/mirza' do
	html = File.read('./views/mirza.html')
end

get '/bojan' do
	html = File.read('./views/bojan.html')
end

get '/mason' do
	html = File.read('./views/mason.html')
end

get '/aa' do
	html = File.read('./views/aa.html')
end

get '/sergey' do
	html = File.read('./views/sergey.html')
end

get '/jordan' do
	html = File.read('./views/jordan.html')
end

get '/cory' do
	html = File.read('./views/cory.html')
end

#signup
get '/signup' do
	html = File.read('./views/signup.html')
end

get '/taken' do
	html = File.read('./views/taken.html')
end

#Post 
get '/dwill_post' do
	html = File.read('./views/dwill_post.html')
end

get '/aa_post' do
	html = File.read('./views/aa_post.html')
end

get '/bojan_post' do
	html = File.read('./views/bojan_post.html')
end

get '/brook_post' do
	html = File.read('./views/brook_post.html')
end

get '/cory_post' do
	html = File.read('./views/cory_post.html')
end

get '/jack_post' do
	html = File.read('./views/jack_post.html')
end

get '/jj_post' do
	html = File.read('./views/jj_post.html')
end

get '/jordan_post' do
	html = File.read('./views/jordan_post.html')
end

get '/kg_post' do
	html = File.read('./views/kg_post.html')
end

get '/mason_post' do
	html = File.read('./views/mason_post.html')
end

get '/mirza_post' do
	html = File.read('./views/mirza_post.html')
end

get '/sergey_post' do
	html = File.read('./views/sergey_post.html')
end

#active
get '/aa_active' do
	html = File.read('./views/aa_active.html')
end

get '/bojan_active' do
	html = File.read('./views/bojan_active.html')
end

get '/brook_active' do
	html = File.read('./views/brook_active.html')
end

get '/cory_active' do
	html = File.read('./views/cory_active.html')
end

get '/dwill_active' do
	html = File.read('./views/dwill_active.html')
	data = Dwill_post.all.to_a
	Mustache.render(File.read('./views/dwill_active.html'), {data: data})
end

get '/jack_active' do
	html = File.read('./views/jack_active.html')
end

get '/jj_active' do
	html = File.read('./views/jj_active.html')
end

get '/jordan_active' do
	html = File.read('./views/jordan_active.html')
end

get '/kg_active' do
	html = File.read('./views/kg_active.html')
end

get '/mason_active' do
	html = File.read('./views/mason_active.html')
end

get '/mirza_active' do
	html = File.read('./views/mirza_active.html')
end

get '/sergey_active' do
	html = File.read('./views/sergey_active.html')
end

#archive 
get '/aa_archive' do
	html = File.read('./views/aa_archive.html')
end

get '/bojan_archive' do
	html = File.read('./views/bojan_archive.html')
end

get '/brook_archive' do
	html = File.read('./views/brook_archive.html')
end

get '/cory_archive' do
	html = File.read('./views/cory_archive.html')
end

get '/dwill_archive' do
	html = File.read('./views/dwill_archive.html')
end

get '/jack_archive' do
	html = File.read('./views/jack_archive.html')
end

get '/jj_archive' do
	html = File.read('./views/jj_archive.html')
end

get '/jordan_archive' do
	html = File.read('./views/jordan_archive.html')
end

get '/kg_archive' do
	html = File.read('./views/kg_archive.html')
end

get '/mason_archive' do
	html = File.read('./views/mason_archive.html')
end

get '/mirza_archive' do
	html = File.read('./views/mirza_archive.html')
end

get '/sergey_archive' do
	html = File.read('./views/sergey_archive.html')
end

#post success
get '/posted' do
	html = File.read('./views/posted.html')
end

#post redirect
get '/no' do
	html = File.read('./views/no.html')
end

get '/dwill_active/:id' do
	html = File.read('./views/post_view.html')
	stuff = params[:id].to_i
	extraction = Dwill_post.find_by(id: stuff)
	# id = extraction["id"]
	# data = Dwill_post.all.to_a
	# binding.pry
	# pull = data[id]
	user_post = extraction["body"]
	user_title = extraction["title"]
	Mustache.render(File.read('./views/post_view.html'), {title: user_title, body: user_post})
end

#dwill post
post '/dwill_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#aa post
post '/aa_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#bojan post
post '/bojan_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#brook post
post '/brook_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#cory post
post '/cory_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#jack post
post '/jack_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#jj post
post '/jj_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#jordan post
post '/jordan_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#lg post
post '/kg_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#mason post
post '/mason_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#mirza post
post '/mirza_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#sergey post
post '/sergey_post' do
	username = params["username"]
	date = params["date"]
	title = params["title"]
	body = params["body"].strip
 	user = User.find_by(username: username)

    if user == nil
    	redirect "/no"
	else Dwill_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/posted"
		
	end
end

#signup
post '/signup' do
	name = params["name"]
	username = params["username"]
	email = params["email"]
	phone = params["phone"]
	avatar = params["user_avatar"]
	data = User.find_by(username: username)
  
    if data == nil
    	User.create({name: name, username: username, email: email, phone: phone, user_avatar: avatar})
 		redirect "/"
	else redirect "/taken"
	end
end



