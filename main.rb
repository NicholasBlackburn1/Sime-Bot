"""
Main Discord Bot File Use to link the project to gether the project
"""
require 'discordrb'


prefix = "@"

Logger.new(ENV['Starting Discord bot'])

bot = Discordrb::Commands::CommandBot.new token: '', prefix: prefix
bot.run true

# Mentiond bot unction
bot.mention do |event|
    event.respond('hey u @ me BOI IM TRYING TO  WORK')
end

bot.message(content: '@help') do |event|
    event  << "`@help` - > Shows list of bot commands "
    event << "`@steam` -> Shows Status of Steams Services"
    event << "`@xboxlive` -> Shows Status of Steams Services"
    event << "`@uplay` -> Shows Status of Uplays Services"
    event << "`@minecraft` -> shows Status of the Minecraft Service's"
    event << "`@rockstar` -> Shows Status of the Rockstar Service's"
end

bot.join()


    