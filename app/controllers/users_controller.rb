# frozen_string_literal: true

# From Devise
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_posts = @user.posts.order('updated_at DESC')
    @user_messages = Message.where(recipient_user_id: params[:id]).order('updated_at DESC')
  end

  def index
    @users = User.all.order('username DESC')
  end
end
