class MessageController < ApplicationController

  def index

    messages_queued = Message.where("time >= ?", Time.now).order(:time)
    messages_sent = Message.where("time < ?", Time.now).order(time: :desc)

    @user_list_messages_queued = []
    @user_list_messages_sent = []

    @user_ids_queued = {}
    messages_queued.each do |message|
      if @user_ids_queued.key?(message.user.id_number)
        num_messages = @user_ids_queued[message.user.id_number]
        @user_ids_queued[message.user.id_number] = num_messages + 1
        next
      end
      @user_list_messages_queued.push(message)
      @user_ids_queued[message.user.id_number] = 1
    end

    @user_ids_sent = {}
    messages_sent.each do |message|
      if @user_ids_sent.key?(message.user.id_number)
        num_messages = @user_ids_sent[message.user.id_number]
        @user_ids_sent[message.user.id_number] = num_messages + 1
        next
      end
      @user_list_messages_sent.push(message)
      @user_ids_sent[message.user.id_number] = 1
    end

  end

end
