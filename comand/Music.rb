
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

def openTestVoice2(event,bot)
    session =  "`ONLINE ✔️`"
    sessionoff = "`TO USE ❌`"

    channel = event.user.voice_channel
    # The `voice_connect` method does everything necessary for the bot to connect to a voice channel. Afterwards the bot
    # will be connected and ready to play stuff back.
 
    if (channel != nil)
        event.respond("Pearl Fun times"+session)
        event.respond("THave fun With Pearl" + session)
            #lewdtimes(bot,event)
            music(bot,channel,event)
    else()
        event.respond("Connect to Voice Channle"+sessionoff)
    end
    
end

def music(bot,channel,event)
    bot.voice_connect(channel)
    event.voice.play_file('data/fun.mp3')

    if(event.voice.pause == true)
      lewdtimes(bot,event)
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

def lewdtimes(bot,event)
    event.respond("have fun with pearl"+""+'https://www.pornhub.com/view_video.php?viewkey=ph5d0eb77c1600a')
    event.voice.destroy
end