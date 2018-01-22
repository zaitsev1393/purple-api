class Api::V1::TopicsController < ApplicationController
  
  before_action :set_topic, only: [:show, :update, :destroy]

  def index
  	@topics = Topic.all
  	json_response(@topics, :ok)
  end

  def show
  	json_response(@topic)
  end

  def new
  	@topic = Topic.new
  end

  def create
  	@topic = Topic.create! topic_params
  	if @topic.save!
  	  json_response(@topic, :created)
  	end
  end

  def update
  end

  def destroy
  	@topic = Topic.find(params[:id])
  	@topic.destroy!
  	head :no_content
  end

private
  
  def set_topic
  	@topic = Topic.find(params[:id])
  end

  def topic_params
  	params.permit(:title, :text, :user_id)
  end

end
