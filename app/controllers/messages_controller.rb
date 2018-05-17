class MessagesController < ApplicationController

  def new
    @message = current_user.messages.build
    @user = User.find(params[:user_id]) # recipient user id
  end

  def create
    @message = current_user.messages.create(message_params)
    redirect_to user_path(params[:user_id])
  end

  private

  def message_params
    params.require(:message).permit(
      :message,
      :recipient_user_id
    )
  end
end
