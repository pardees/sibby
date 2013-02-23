class VotesController < ApplicationController
    def create
      topic = Topic.find(params[:topic_id])
      vote = topic.votes.build
      vote.save!
      redirect_to(topics_path)
    end
def destroy
     topic = Topic.find(params[:topic_id])
      topic.votes.last.try(:destroy)
        redirect_to(topics_path)
    end
end
