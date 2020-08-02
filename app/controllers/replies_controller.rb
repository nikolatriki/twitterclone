class RepliesController < ApplicationController
  def new
    @tweet = Tweet.find(params[:tweet_id])
    @reply = @tweet.replies.build
  end

  def create
    tweet = Tweet.find(params[:tweet_id])
    reply = tweet.replies.build(reply_params)

    reply.save
    redirect_to tweet
  end

  private

  def reply_params
    params.require(:reply).permit(:replier, :body)
  end
end
