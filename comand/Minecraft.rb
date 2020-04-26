def Minecraft(event)
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
        minecraftsession = "`ONLINE ✔️`"
    else()
        minecraftsession = "`OFFLINE ❌`"
    end

    if(minecraftaccounts == 'green')
        minecraftaccounts = "`ONLINE ✔️`"
    else()
        minecraftaccounts = "`OFFLINE ❌`"
    end

    if(minecraftauth == 'green')
        minecraftauth = "`ONLINE ✔️`"
    else()
        minecraftauth = "`OFFLINE ❌`"
    end

    if(minecrafttextures == 'green')
        minecrafttextures = "`ONLINE ✔️`"
    else()
        minecrafttextures = "`OFFLINE ❌`"
    end
    
    event.respond('**MINECRAFT STATUS**')
    event.respond("session.minecraft.net" + minecraftsession)
    event.respond("account.mojang.com" + minecraftaccounts)
    event.respond("authserver.mojang.com" + minecraftauth)
    event.respond("textures.minecraft.net" + minecrafttextures)
  
end 

def popServers(event)
    event.respond("**Minecraft Server List**")
    hypixel(event)
    hive(event)
    blackCraft(event)
   
end

def hypixel(event)
    online = "`ONLINE ✔️`"
    offline = "`OFFLINE ❌`"
    ms = MineStat.new("mc.hypixel.net", 25565)
    event.respond("**HYPIXEL SERVER**")
    if ms.online
      event.respond("mc.hypixel.net"+online)
      event.respond("Server is running version #{ms.version} with #{ms.current_players} out of #{ms.max_players} players")
      event.respond "Latency: #{ms.latency}ms"
    else
        event.respond("mc.hypixel.net" + offline)
    end
end

def hive(event)
    online = "`ONLINE ✔️`"
    offline = "`OFFLINE ❌`"
    ms = MineStat.new("play.hivemc.com", 25565)
    event.respond("**HIVE SERVER**")
    if ms.online
      event.respond("play.hivemc.com"+online)
      event.respond("Server is running version #{ms.version} with #{ms.current_players} out of #{ms.max_players} players")
      event.respond "Latency: #{ms.latency}ms"
    else
        event.respond("play.hivemc.com" + offline)
    end
end

def blackCraft(event)
    event.respond("**Hacker Craft SERVER**")
    online = "`ONLINE ✔️`"
    offline = "`OFFLINE ❌`"
    ms = MineStat.new("minecraft.nicholasblackburn.space", 25565)
    
    if ms.online
      event.respond("minecraft.nicholasblackburn.space"+online)
      event.respond("Server is running version #{ms.version} with #{ms.current_players} out of #{ms.max_players} players")
      event.respond "Latency: #{ms.latency}ms"
    else
        event.respond("minecraft.nicholasblackburn.space" + offline)
    end
end

    