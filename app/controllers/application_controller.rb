require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post "/teams" do
      members = params[:team][:members]
      @super_heroes = members.collect do |member_params|
      end
      erb :team
    end
end