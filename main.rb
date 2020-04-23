"""
Main Discord Bot File Use to link the project to gether the project
"""
require 'discordrb'


prefix = "@"

Logger.new(ENV['Starting Discord bot'])

bot = Discordrb::Commands::CommandBot.new token: '', prefix: prefix
bot.run true

bot.mention do |event|
    event.respond('hey u @me know u been atted')
end
bot.join()

    