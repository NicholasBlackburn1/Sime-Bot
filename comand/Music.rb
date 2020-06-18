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
    sessionoff = "`TO USE ❌`"

    channel = event.user.voice_channel
    # The `voice_connect` method does everything necessary for the bot to connect to a voice channel. Afterwards the bot
    # will be connected and ready to play stuff back.
 
    if (channel != nil)
        event.respond("Bot Test Voice"+session)
        event.respond("Test of bot mp3 voice encodeing" + session)
        playTestMusic(bot,channel,event)
    else()
        event.respond("Connect to Voice Channle"+sessionoff)
    end
    
end

def playMusic(bot,channel,event)
    playMoaing(bot,channel,event)
end

def playTestMusic(bot,channel,event)
    bot.voice_connect(channel)
    event.voice.play_file('data/test.mp3')

    if(event.voice.pause == true)
        event.respond(" Test Music is paused To Play Type `@resume`")
    else()
    end
end

def pauseMusic(event,bot)
    event.respond("Music `PAUSED ✔️`")
    event.voice.pause

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

def stopMusic(event,bot)
    event.respond("VoiceBot `DISCONNECTED ✔️`")
    event.voice.destroy
end

def playMoaing(event,bot,channel)
   
    vid = Discordrb::Webhooks::EmbedThumbnail.new(url:"https://www.pornhub.com/view_video.php?viewkey=ph5d0eb77c1600a")

    bot.voice_connect(channel)

    event.voice.play_file('data/moan.mp3')
    event.respond("`Hope you Have Fun With Pearl!`")
    event.re spond("Here, Have Some **WHOLESOME FUN` With pearl!")
    event.respond(vid)

        event.respond("Pearl Universe"+session)
        event.respond("Have Fun!" + session)
        fun = True
        playFun(bot,channel,event, fun)


    
end


def playFun(bot,channel,event, fun)
    bot.voice_connect(channel)
    if (fun == true)
        event.voice.play_file('data/fun.mp3')
        event.voice.volume = 20
    end
end