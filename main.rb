"""
Main Discord Bot File Use to link the project to gether the project
"""

require 'json'
require 'discordrb'
require 'mojang'
require 'minestat'
require 'steam_web_api'
require 'opus-ruby'
require 'dotenv/load'

require_relative 'comand/Minecraft'
require_relative 'comand/Steam'
require_relative 'comand/Help'
require_relative 'comand/Atbot'
require_relative 'comand/Music'

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

bot.message(content: '@minecraft') do |event|
    Minecraft(event)
end

bot.message(content: '@mcserverlist') do |event|
    popServers(event)
end


bot.message(content: '@play') do |event|
    openVoice(event,bot)
end

bot.message(content: '@playtest') do |event|
    openTestVoice(event,bot)
end

bot.message(content: '@pause') do |event|
    pauseMusic(event,bot)
end

bot.message(content: '@loud') do |event|
    superVolume(event,bot)
end

bot.message(content: '@resume') do |event|
    musicResume(event,bot)
end

bot.message(content: '@stop') do |event|
    stopMusic(event,bot)
end

bot.join()


    