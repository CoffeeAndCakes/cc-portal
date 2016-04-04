class StaticPagesController < ApplicationController
  def index
    @news = News.order(date: :desc).limit(5)
    @message = Message.offset(rand(Message.count)).first
  end
end
