
def Steam(event)
    playerkey = ENV["STEAM_USER_KEY"]
    
    player = SteamWebApi::Player.new(playerkey)
    data = player.owned_games
    online = data.success 

    if(online == TRUE)
        status = "**ONLINE**"
    else()
        status = "**ON FIRE**"
    end 

    event.respond("`Is Steam Server Online `" + status )
end

def SteamConfig(config)
    steamkey = ENV["STEAM_API_KEY"]
    config.api_key = steamkey
end