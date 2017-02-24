require 'sinatra'
require_relative './team_info.rb' 
require 'json'

set :bind, '0.0.0.0'

get '/' do
  @data = query("opponents.txt")
  erb :'player_table'
end

get '/table/opponents' do
  path = 'teams/opponent_list.txt'
  @tname = {}
  @data = Array.new
  File.open(path, 'r') do |list|
    while line = list.gets  
      line = line.gsub(/ /,"_")
      new = query("teams/#{line.gsub(/\n/,"").downcase}.txt")
      @data << new
      @tname[new] = line.gsub(/\n/,"").gsub(/_/," ")
    end  
    erb :'all_opponents_player_table'
  end
end

get '/table/:file' do |file|
  @data = query("teams/#{file}.txt")
  erb :'player_table'
end
