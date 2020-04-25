
def Steam(event)
    playerkey = ENV["STEAM_USER_KEY"]
    
    player = SteamWebApi::Player.new(playerkey)
    data = player.owned_games
    online = data.success 

    if(online == TRUE)
        status = "`ONLINE ✔️`"
    else()
        status = "`OFFLINE ❌`"
    end 
    event.respond("**STEAM STATUS**")
    event.respond("api.steampowered.com" + status )
    event.respond("store.steampowered.com" + status )
    event.respond("steampowered.com" + status )
end

def SteamConfig(config)
    steamkey = ENV["STEAM_API_KEY"]
    config.api_key = steamkey
end