# DOCS
# class created by: Sebastián Delgado
# date 12/08/2017
# dev contact: sebasdeldi@hotmail.com
# description: message related server logic implementation


class MessagesController < ApplicationController
  
  def index
    # query messages for current user
    @received_messages = current_user.received_messages
    @sent_messages = current_user.sent_messages

    # if params are sent by a post request
    if request.post?
      # creates message basend on posted params
      Message.create(sender_id: current_user.id, content: params[:message][:content], recipient_id: params[:message][:recipient_id])
      # sets flash success message
      flash[:notice] = "Message sent !"
      # sends notification mail
      ApplicationMailer.message_recipent_notification(current_user, User.find(params[:message][:recipient_id])).deliver_now
    end
  end

end
