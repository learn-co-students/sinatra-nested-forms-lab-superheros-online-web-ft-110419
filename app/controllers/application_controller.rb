require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        team_info = params[:team]
        @team = Team.new(team_info)

        params[:team][:member].each do |member|
            Hero.new(member)
        end

        @heroes = Hero.all
        # binding.pry
        erb :team
    end

end
