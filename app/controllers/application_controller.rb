require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end
    
    post '/teams' do 
      @team = Team.new(params[:team].to_a[0..1].to_h)
      @members = params[:team][:members].map {|data| Hero.new(data) }
      
      erb :team
    end 
    
end
