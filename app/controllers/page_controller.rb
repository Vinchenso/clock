class PageController < ApplicationController
  def index
    @current_time = Time.now.to_s

    ActionCable.server.broadcast  'clock_channel',  message:
      '<p>'+Time.now.to_s+'</p>'
  end
end
