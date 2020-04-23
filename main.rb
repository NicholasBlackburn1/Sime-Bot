"""
Main Discord Bot File Use to link the project to gether the project
"""
require 'discordrb'

Logger.new(ENV['Starting Discord bot'])

@my_bot = Discordrb::Bot.new token: <my-token>, client_id: <my-id>
@my_bot.run true