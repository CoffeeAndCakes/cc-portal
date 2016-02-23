class StaticPagesController < ApplicationController
  def index
    @message = Message.offset(rand(Message.count)).first
  end
end
