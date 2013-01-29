class MessagesController < ApplicationController
  def create
    @message ||= Message.new
    if @message.update_attributes(params[:message])
      flash[:notice] = 'Your message will be sent to the receiver'
      redirect_to root_path
    else
      flash[:notice] = 'Something went wrong with your messge'
      redirect_to root_path
    end
  end

  def search
  end

  def show
    @message = Message.find_by_code(params[:code])
  end

  def new
    @message = Message.new
  end
end
