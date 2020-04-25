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

def playMusic(bot,channel,event)
    bot.voice_connect(channel)
    event.voice.play_file('data/test.mp3')
end
      