require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post "/teams" do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero_name = []
      @hero_power = []
      @hero_bio = []
      
      members = params[:team][:members]
      @super_heroes = members.collect do |member_params|
        @hero_name << member_params[:name]
        @hero_power << member_params[:power]
        @hero_bio << member_params[:bio]
      end
      erb :team
    end
end