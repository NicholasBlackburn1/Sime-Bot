def Pm(event)
    event << "**U CALLED**"
    event << "here is the rundown"
    event << "`@help` - > Shows list of bot commands "
    event << "`@steam` -> Shows Status of Steams Services"
    event << "`@minecraft` -> shows Status of the Minecraft Service's."
    event << "`@mcserverlist` -> list state of current Pop minecraft servers"
    event << "`@play` -> Plays music in voice channel --> currently does not work"
    event << "`@playtest` -> Plays test's Music on the server"
    event << "`@pause` -> pause music"
    event << "`@resume` -> resumes paused music"
end