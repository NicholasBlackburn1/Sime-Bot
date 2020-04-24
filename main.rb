"""
Main Discord Bot File Use to link the project to gether the project
"""
require 'json'
require 'discordrb'
require 'mojang'
require 'steam_web_api'
require 'dotenv/load'

require_relative 'comand/Minecraft'
require_relative 'comand/Steam'
require_relative 'comand/Help'
require_relative 'comand/Atbot'
prefix = "@"

botkey = ENV['DISCORD_API_KEY']

Logger.new(ENV['Starting Discord bot'])

bot = Discordrb::Commands::CommandBot.new token: botkey, prefix: prefix
bot.run true
# Steam api config 
SteamWebApi.configure do |config|
	SteamConfig(config)
end

# Mentiond bot unction
bot.mention do |event|
    Pm(event)
end

bot.message(content: '@help') do |event|
    Help(event)
end
# Calls Def from Steam .rb Command file 
bot.message(content: '@steam') do |event|
   Steam(event)
end

bot.message(content: '@xboxlive') do |event|
    event <<"https://beta.support.xbox.com/xbox-live-status?xr=shellnav"
end

bot.message(content: '@uplay') do |event|
    
end

bot.message(content: '@minecraft') do |event|
    Minecraft(event)
end

bot.message(content: '@rockstar') do |event|
    
    
end


bot.join()


    