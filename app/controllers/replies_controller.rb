class RepliesController < ApplicationController
  def new
    @tweet = Tweet.find(params[:tweet_id])
    @reply = @tweet.replies.build
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @reply = @tweet.replies.build(reply_params)

    if @reply.save
      redirect_to @tweet
    else
      render :new
    end
  end

  def edit
    @reply = Reply.find(params[:id])
    @tweet = @reply.tweet
  end

  def update
    @reply = Reply.find(params[:id])
    @tweet = @reply.tweet

    if @reply.update(reply_params)
      redirect_to @tweet
    else
      render :edit
    end
  end

  def destroy
    reply = Reply.find(params[:id])
    tweet = reply.tweet

    reply.destroy
    redirect_to tweet
  end

  private

  def reply_params
    params.require(:reply).permit(:replier, :body)
  end
end
