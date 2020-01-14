require 'sinatra/base'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end 
    
    # When posting
    # it will be on the display erb file
    post '/teams' do 
        @teams = Team.new(params[:team])
        params['team']['members'].each do |mem|
            Hero.new(mem)
        end
        @members = Hero.all
        erb :team
    end 

end
