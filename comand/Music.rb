def openVoice(event,bot)
        session =  "`ONLINE ✔️`"
        sessionoff = "`OFFLINE ❌`"

        channel = event.user.voice_channel
        # The `voice_connect` method does everything necessary for the bot to connect to a voice channel. Afterwards the bot
        # will be connected and ready to play stuff back.
     
        if (channel != nil)
            event.respond("Bot Voice"+session)
            playMusic(bot,channel,event)
        else()
            event.respond("Bot Voice"+sessionoff)
        end
        
end

def openTestVoice(event,bot)
    session =  "`ONLINE ✔️`"
    sessionoff = "`OFFLINE ❌`"

    channel = event.user.voice_channel
    # The `voice_connect` method does everything necessary for the bot to connect to a voice channel. Afterwards the bot
    # will be connected and ready to play stuff back.
 
    if (channel != nil)
        event.respond("Bot Test Voice"+session)
        playTestMusic(bot,channel,event)
    else()
        event.respond("Bot Test Voice"+sessionoff)
    end
    
end

def playMusic(bot,channel,event)
    bot.voice_connect(channel)
    event.voice.play_file('data/test.mp3')

    if(event.voice.pause == true)
        event.respond("Music is paused To Play Type @resume")
    else()
    end
end

def playTestMusic(bot,channel,event)
    bot.voice_connect(channel)
    event.voice.play_file('data/test.mp3')

    if(event.voice.pause == true)
        event.respond(" Test Music is paused To Play Type `@resume`")
    else()
    end
end

def stopMusic(event,bot)
    event.voice.pause
    event.respond("Music `PAUSED ✔️`")
end

def superVolume(event,bot)
    volume =  "`LOUD ✔️`"
    event.voice.volume = 2
    event.respond("Volume"+ volume)
end

def musicResume(event, bot) 
    event.voice.continue
    event.respond("playing `Music! ✔️`")
end