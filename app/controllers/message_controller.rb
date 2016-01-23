class MessageController < ApplicationController

  def index

    @messages_queued = Message.where("time >= ?", Time.now).order(:time)
    @messages_sent = Message.where("time < ?", Time.now).order(time: :desc)

  end

end
