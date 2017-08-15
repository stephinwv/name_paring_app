require 'sinatra'
require_relative 'random_pairing.rb'

get "/" do
	erb :index
end
post '/index' do
	
	number = params[:number]
	text = params[:text]
	# redirect'/names?number='+number+'&text='+text
end
get '/names'do
	names = params.values
	pair = pair(names)
	erb :names, :locals=>{:pair=> pair}

end
post '/names' do
	puts "MADE IT TO POST NAMES"
	names = params[:names]
	names = params.values
	pair = pair(names)
erb :names, :locals=>{:pair=> pair}
end
