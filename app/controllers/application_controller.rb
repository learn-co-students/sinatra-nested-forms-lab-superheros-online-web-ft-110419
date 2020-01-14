# frozen_string_literal: true

require 'sinatra/base'

class App < Sinatra::Base
    set :views, proc { File.join(root, '../views/') }

    get '/' do
        erb :team
    end

    post '/teams' do
        @team = Team.new(name: params['team']['name'], motto: params['team']['motto'])
        @members = params['team']['members'].map do |member|
            SuperHero.new(name: member['name'], power: member['power'], bio: member['bio'])
        end
        erb :super_hero
    end
end
