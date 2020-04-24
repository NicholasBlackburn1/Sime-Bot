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