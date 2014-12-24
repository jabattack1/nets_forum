require 'sinatra'
require 'pry'
require 'securerandom'
require 'active_record'
require 'mustache'
require 'date'
require 'redcarpet'
require './lib/users.rb'
require './lib/connection.rb'
require 'redcarpet'
require 'twilio-ruby'


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
	data = Aa_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/aa_active.html'), {data: final})
end

get '/bojan_active' do
	html = File.read('./views/bojan_active.html')
	data = Bojan_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/bojan_active.html'), {data: final})
end

get '/brook_active' do
	html = File.read('./views/brook_active.html')
	data = Brook_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/brook_active.html'), {data: final})
end

get '/cory_active' do
	html = File.read('./views/cory_active.html')
	data = Cory_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/cory_active.html'), {data: final})
end

get '/dwill_active' do
	html = File.read('./views/dwill_active.html')
	data = Dwill_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/dwill_active.html'), {data: final})
end


get '/jack_active' do
	html = File.read('./views/jack_active.html')
	data = Jack_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/jack_active.html'), {data: final})
end

get '/jj_active' do
	html = File.read('./views/jj_active.html')
	data = Jj_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/jj_active.html'), {data: final})
end

get '/jordan_active' do
	html = File.read('./views/jordan_active.html')
	data = Jordan_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/jordan_active.html'), {data: final})
end

get '/kg_active' do
	html = File.read('./views/kg_active.html')
	data = Kg_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/kg_active.html'), {data: final})
end

get '/mason_active' do
	html = File.read('./views/mason_active.html')
	data = Mason_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/mason_active.html'), {data: final})
end

get '/mirza_active' do
	html = File.read('./views/mirza_active.html')
	data = Mirza_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/mirza_active.html'), {data: final})
end

get '/sergey_active' do
	html = File.read('./views/sergey_active.html')
	data = Sergey_post.all.to_a
	final = data.select { |find| find["post_date"].to_s >= "2014-01-01"  } 
	Mustache.render(File.read('./views/sergey_active.html'), {data: final})
end

#archive 
get '/aa_archive' do
	html = File.read('./views/aa_archive.html')
	data = Aa_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/aa_archive.html'), {data: final})
end

get '/bojan_archive' do
	html = File.read('./views/bojan_archive.html')
	data = Bojan_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/bojan_archive.html'), {data: final})
end

get '/brook_archive' do
	html = File.read('./views/brook_archive.html')
	data = Brook_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/brook_archive.html'), {data: final})
end

get '/cory_archive' do
	html = File.read('./views/cory_archive.html')
	data = Cory_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/cory_archive.html'), {data: final})
end

get '/dwill_archive' do
	html = File.read('./views/dwill_archive.html')
	data = Dwill_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/dwill_archive.html'), {data: final})
end

get '/jack_archive' do
	html = File.read('./views/jack_archive.html')
	data = Jack_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/jack_archive.html'), {data: final})
end

get '/jj_archive' do
	html = File.read('./views/jj_archive.html')
	data = Jj_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/jj_archive.html'), {data: final})
end

get '/jordan_archive' do
	html = File.read('./views/jordan_archive.html')
	data = Jordan_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/jordan_archive.html'), {data: final})
end

get '/kg_archive' do
	html = File.read('./views/kg_archive.html')
	data = Kg_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/kg_archive.html'), {data: final})
end

get '/mason_archive' do
	html = File.read('./views/mason_archive.html')
	data = Mason_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/mason_archive.html'), {data: final})
end

get '/mirza_archive' do
	html = File.read('./views/mirza_archive.html')
	data = Mirza_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/mirza_archive.html'), {data: final})
end

get '/sergey_archive' do
	html = File.read('./views/sergey_archive.html')
	data = Sergey_post.all.to_a
	final = data.select { |find| find["post_date"].to_s <= "2013-12-31"  } 
	Mustache.render(File.read('./views/sergey_archive.html'), {data: final})
end

#post success
get '/posted' do
	html = File.read('./views/posted.html')
end

get '/posted_comment' do
	html = File.read('./views/posted_comment.html')
end

#post redirect
get '/no' do
	html = File.read('./views/no.html')
end

get '/dwill_active/:id' do
	html = File.read('./views/dwill_post_view.html')
	stuff = params[:id].to_i
	extraction = Dwill_post.find_by(id: stuff)
	data = Dwill_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Dwill_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/dwill_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end

get '/aa_active/:id' do
	html = File.read('./views/aa_post_view.html')
	stuff = params[:id].to_i
	extraction = Aa_post.find_by(id: stuff)
	data = Aa_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Aa_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/aa_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end


get '/bojan_active/:id' do
	html = File.read('./views/bojan_post_view.html')
	stuff = params[:id].to_i
	extraction = Bojan_post.find_by(id: stuff)
	data = Bojan_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Bojan_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/bojan_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end


get '/brook_active/:id' do
	html = File.read('./views/brook_post_view.html')
	stuff = params[:id].to_i
	extraction = Brook_post.find_by(id: stuff)
	data = Brook_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Brook_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/brook_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end


get '/cory_active/:id' do
	html = File.read('./views/cory_post_view.html')
	stuff = params[:id].to_i
	extraction = Cory_post.find_by(id: stuff)
	data = Cory_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Cory_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/cory_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end


get '/jack_active/:id' do
	html = File.read('./views/jack_post_view.html')
	stuff = params[:id].to_i
	extraction = Jack_post.find_by(id: stuff)
	data = Jack_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Jack_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/jack_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end


get '/jj_active/:id' do
	html = File.read('./views/jj_post_view.html')
	stuff = params[:id].to_i
	extraction = Jj_post.find_by(id: stuff)
	data = Jj_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Jj_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/jj_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end


get '/jordan_active/:id' do
	html = File.read('./views/jordan_post_view.html')
	stuff = params[:id].to_i
	extraction = Jordan_post.find_by(id: stuff)
	data = Jordan_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Jordan_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/jordan_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end


get '/kg_active/:id' do
	html = File.read('./views/kg_post_view.html')
	stuff = params[:id].to_i
	extraction = Kg_post.find_by(id: stuff)
	data = Kg_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Kg_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/kg_post_view.html'), {id: stuff, title: rend, body: user_post, data: rendered, likes: likes_count, dislikes: dislikes_count})
end


get '/mason_active/:id' do
	html = File.read('./views/mason_post_view.html')
	stuff = params[:id].to_i
	extraction = Mason_post.find_by(id: stuff)
	data = Mason_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Mason_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/mason_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end


get '/mirza_active/:id' do
	html = File.read('./views/mirza_post_view.html')
	stuff = params[:id].to_i
	extraction = Mirza_post.find_by(id: stuff)
	data = Mirza_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Mirza_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/mirza_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end


get '/sergey_active/:id' do
	html = File.read('./views/sergey_post_view.html')
	stuff = params[:id].to_i
	extraction = Sergey_post.find_by(id: stuff)
	data = Sergey_comment.all.to_a 
	final = data.select { |find| find["post_id"] == stuff} 
	user_post = extraction["body"]
	user_title = extraction["title"]
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	rendered = markdown.render(user_post)
	rend = markdown.render(user_title)
	dota = Sergey_like.all.to_a
	tally = dota.select { |find| find["post_id"] == stuff}
	likes	= tally.select { |find| find["user_like"] == true}
	dislikes = tally.select { |find| find["user_dislike"] == true}
	likes_count = likes.count
	dislikes_count = dislikes.count
	Mustache.render(File.read('./views/sergey_post_view.html'), {id: stuff, title: rend, body: rendered, data: final, likes: likes_count, dislikes: dislikes_count})
end


#dwill comment
get '/dwill_active/:id/comment' do
	html = File.read('./views/dwill_comment.html')
	stuff = params[:id].to_i
	extraction = Dwill_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/dwill_comment.html'), {id: stuff})
end

get '/aa_active/:id/comment' do
	html = File.read('./views/aa_comment.html')
	stuff = params[:id].to_i
	extraction = Aa_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/aa_comment.html'), {id: stuff})
end

get '/bojan_active/:id/comment' do
	html = File.read('./views/bojan_comment.html')
	stuff = params[:id].to_i
	extraction = Bojan_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/bojan_comment.html'), {id: stuff})
end

get '/brook_active/:id/comment' do
	html = File.read('./views/brook_comment.html')
	stuff = params[:id].to_i
	extraction = Brook_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/brook_comment.html'), {id: stuff})
end

get '/cory_active/:id/comment' do
	html = File.read('./views/cory_comment.html')
	stuff = params[:id].to_i
	extraction = Cory_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/cory_comment.html'), {id: stuff})
end

get '/jack_active/:id/comment' do
	html = File.read('./views/jack_comment.html')
	stuff = params[:id].to_i
	extraction = Jack_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/jack_comment.html'), {id: stuff})
end

get '/jj_active/:id/comment' do
	html = File.read('./views/jj_comment.html')
	stuff = params[:id].to_i
	extraction = Jj_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/jj_comment.html'), {id: stuff})
end

get '/jordan_active/:id/comment' do
	html = File.read('./views/jordan_comment.html')
	stuff = params[:id].to_i
	extraction = Jordan_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/jordan_comment.html'), {id: stuff})
end

get '/kg_active/:id/comment' do
	html = File.read('./views/kg_comment.html')
	stuff = params[:id].to_i
	extraction = Kg_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/kg_comment.html'), {id: stuff})
end

get '/mason_active/:id/comment' do
	html = File.read('./views/mason_comment.html')
	stuff = params[:id].to_i
	extraction = Mason_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/mason_comment.html'), {id: stuff})
end

get '/mirza_active/:id/comment' do
	html = File.read('./views/mirza_comment.html')
	stuff = params[:id].to_i
	extraction = Mirza_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/mirza_comment.html'), {id: stuff})
end

get '/sergey_active/:id/comment' do
	html = File.read('./views/sergey_comment.html')
	stuff = params[:id].to_i
	extraction = Sergey_post.find_by(id: stuff)
	comment = extraction["body"]
	Mustache.render(File.read('./views/sergey_comment.html'), {id: stuff})
end

#like or dislike
post '/dwill_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Dwill_like.create({post_id: stuff, user_like: like, user_dislike: dislike})
 	
	# Dwill_post.update(extraction, user_like: like, user_dislike: dislike)
	redirect "/dwill_active/#{params[:id]}"
end

post '/aa_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Aa_like.create({post_id: stuff, user_like: like, user_dislike: dislike})

	redirect "/aa_active/#{params[:id]}"
end

post '/bojan_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Bojan_like.create({post_id: stuff, user_like: like, user_dislike: dislike})
 	
	redirect "/bojan_active/#{params[:id]}"
end

post '/brook_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Brook_like.create({post_id: stuff, user_like: like, user_dislike: dislike})
 	
	redirect "/brook_active/#{params[:id]}"
end

post '/cory_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Cory_like.create({post_id: stuff, user_like: like, user_dislike: dislike})
 	
	redirect "/cory_active/#{params[:id]}"
end

post '/jj_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Jj_like.create({post_id: stuff, user_like: like, user_dislike: dislike})
 	
	redirect "/jj_active/#{params[:id]}"
end

post '/jordan_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Jordan_like.create({post_id: stuff, user_like: like, user_dislike: dislike})
 	
	redirect "/jordan_active/#{params[:id]}"
end

post '/kg_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Kg_like.create({post_id: stuff, user_like: like, user_dislike: dislike})
 	
	redirect "/kg_active/#{params[:id]}"
end

post '/mason_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Mason_like.create({post_id: stuff, user_like: like, user_dislike: dislike})
 	
	redirect "/mason_active/#{params[:id]}"
end

post '/mirza_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Mirza_like.create({post_id: stuff, user_like: like, user_dislike: dislike})

	redirect "/mirza_active/#{params[:id]}"
end

post '/jack_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Jack_like.create({post_id: stuff, user_like: like, user_dislike: dislike})

	redirect "/jack_active/#{params[:id]}"
end

post '/sergey_active/:id/like' do
	stuff = params[:id].to_i
	
	like = params["user_like"]
	dislike = params["user_dislike"]
	Sergey_like.create({post_id: stuff, user_like: like, user_dislike: dislike})

	redirect "/sergey_active/#{params[:id]}"
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
 		redirect "/dwill_active"
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
	else Aa_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/aa_active"
		
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
	else Bojan_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/bojan_active"
		
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
	else Brook_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/brook_active"
		
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
	else Cory_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/cory_active"
		
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
	else Jack_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/jack_active"
		
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
	else Jj_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/jj_active"
		
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
	else Jordan_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/jordan_active"
		
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
	else Kg_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/kg_active"
		
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
	else Mason_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/mason_active"
		
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
	else Mirza_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/mirza_active"
		
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
	else Sergey_post.create({username: username, post_date: date, title: title, body: body})
 		redirect "/sergey_active"
		
	end
end

#dwill comment
post '/dwill_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Dwill_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Dwill_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/dwill_active/#{params[:id]}"
	end
end

post '/aa_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Aa_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Aa_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/aa_active/#{params[:id]}"
	end
end

post '/bojan_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Bojan_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Bojan_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/bojan_active/#{params[:id]}"
	end
end

post '/brook_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Brook_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Brook_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/brook_active/#{params[:id]}"
	end
end

post '/cory_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Cory_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Cory_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/cory_active/#{params[:id]}"
	end
end

post '/jack_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Jack_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Jack_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/jack_active/#{params[:id]}"
	end
end

post '/jj_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Jj_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Jj_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/jj_active/#{params[:id]}"
	end
end

post '/jordan_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Jordan_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Jordan_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/jordan_active/#{params[:id]}"
	end
end

post '/kg_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Kg_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Kg_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/kg_active/#{params[:id]}"
	end
end

post '/mason_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Mason_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Mason_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/mason_active/#{params[:id]}"
	end
end

post '/mirza_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Mirza_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Mirza_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/mirza_active/#{params[:id]}"
	end
end
post '/sergey_active/:id/comment' do
	username = params["username"]
	date = params["date"]
	body = params["body"].strip
 	user = User.find_by(username: username)
 	stuff = params[:id].to_i
	extraction = Sergey_post.find_by(id: stuff)
	id = extraction["id"]
    if user == nil
    	redirect "/no"
	else Sergey_comment.create({username: username, post_id: id, comment_date: date, body: body})
 		redirect "/sergey_active/#{params[:id]}"
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

    	account_sid = 'AC8ccdfba43b48b732db581898a686e415'
		auth_token = '649f8f15e69e03d22e77c4cea5b7f13c'
		client = Twilio::REST::Client.new account_sid, auth_token
 
		message = client.account.messages.create(:body => "Welcome to Netsball, you will now be able to post and comment using your username!  Thank you!",
    	:to => "+1#{phone}",
    	:from => "+13477688810")
   		
 		redirect "/"
	else redirect "/taken"
	end
end



