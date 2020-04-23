"""
Main Discord Bot File Use to link the project to gether the project
"""
require 'discordrb'
require 'mojang'

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

bot.message(content: '@steam') do |event|
    
end

bot.message(content: '@xboxlive') do |event|
    event <<"https://beta.support.xbox.com/xbox-live-status?xr=shellnav"
end

bot.message(content: '@uplay') do |event|
    
end

bot.message(content: '@minecraft') do |event|
  response = Curl.get('https://status.mojang.com/check'.freeze).body_str
  json = Oj.load(response)
  ret = {}  # Reformatting the returned data because it is super annoying to work with.

  json.each do |hash|
    hash.each do |site, status|
      ret[site] = status 
    end
    end
  event.respond(`session.minecraft.net` + ret['session.minecraft.net'])
end

bot.message(content: '@rockstar') do |event|
    
    
end


bot.join()


    