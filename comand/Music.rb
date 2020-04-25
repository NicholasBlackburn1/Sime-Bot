def openVoice(event,bot)
        session =  "`ONLINE ✔️`"
        sessionoff = "`OFFLINE ❌`"

        channel = event.user.voice_channel
        # The `voice_connect` method does everything necessary for the bot to connect to a voice channel. Afterwards the bot
        # will be connected and ready to play stuff back.
        
        bot.voice_connect(channel)
        
        if (channel != null)
            event.respond("Bot Voice"+session)
            while(TRUE)
                playMusic(bot)
            end
        else()
            event.respond("Bot Voice"+sessionoff)
        end
end

def playMusic(bot)
    bot.command(:play_mp3) do |event|
        # `event.voice` is a helper method that gets the correct voice bot on the server the bot is currently in. Since a
        # bot may be connected to more than one voice channel (never more than one on the same server, though), this is
        # necessary to allow the differentiation of servers.
        #
        # It returns a `VoiceBot` object that methods such as `play_file` can be called on.
        voice_bot = event.voice
        voice_bot.play_file('data/test.mp3')
    end
end
      