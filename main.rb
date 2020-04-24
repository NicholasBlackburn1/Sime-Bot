"""
Main Discord Bot File Use to link the project to gether the project
"""
require 'json'
require 'discordrb'
require 'mojang'
require 'steam_web_api'

prefix = "@"
player_steam_id = 
player2_steam_id = 

Logger.new(ENV['Starting Discord bot'])

bot = Discordrb::Commands::CommandBot.new token: , prefix: prefix
bot.run true
# Steam api config 
SteamWebApi.configure do |config|
	config.api_key = 
end

# Mentiond bot unction
bot.mention do |event|
    event.respond('hey u @ me BOI IM TRYING TO  WORK')
end

bot.message(content: '@help') do |event|
    event  << "`@help` - > Shows list of bot commands "
    event << "`@steam` -> Shows Status of Steams Services"
    event << "`@xboxlive` -> Shows Status of Steams Services"
    event << "`@uplay` -> Shows Status of Uplays Services"
    event << "`@minecraft` -> shows Status of the Minecraft Service's. 'Working? ✔`"
    event << "`@rockstar` -> Shows Status of the Rockstar Service's"
end

bot.message(content: '@steam') do |event|
    player = SteamWebApi::Player.new(player_steam_id)
    data = player.owned_games
    online = data.success 

    if(online == TRUE)
        status = "**ONLINE**"
    else()
        status = "`ON FIRE`"
    end 
    event.respond("`Is Steam Api Online `" + status )
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

    minecraftsession = ret['session.minecraft.net']
    minecraftaccounts = ret['account.mojang.com']
    minecraftauth = ret['authserver.mojang.com']
    minecrafttextures = ret['textures.minecraft.net']
    
    if(minecraftsession == 'green')
        minecraftsession = "**ACTIVE✔**"
    else()
        minecraftsession = "**ON FIRE**"
    end

    if(minecraftaccounts == 'green')
        minecraftaccounts = "**ACTIVE✔**"
    else()
        minecraftaccounts = "**ON FIRE**"
    end

    if(minecraftauth == 'green')
        minecraftauth = "**ACTIVE✔**"
    else()
        minecraftauth = "**ON FIRE**"
    end

    if(minecrafttextures == 'green')
        minecrafttextures = "**ACTIVE✔**"
    else()
        minecrafttextures = "**ON FIRE**"
    end
    

  event.respond("`session.minecraft.net`" + minecraftsession)
  event.respond("`account.mojang.com`" + minecraftaccounts)
  event.respond("`authserver.mojang.com`" + minecraftauth)
  event.respond("`textures.minecraft.net`" + minecrafttextures)
  
end

bot.message(content: '@rockstar') do |event|
    
    
end


bot.join()


    