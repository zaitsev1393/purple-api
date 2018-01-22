class Api::V1::CommentsController < ApplicationController

  before_action :set_comment, only: [:show, :update, :destroy]

  def index
  	@comments = Comment.all
  	render json: @comments
  end

  def show
  	json_response(@topic)
  end

  def update
    @topic.update_attributes! comment_params
    json_response(@topic, :updated)
  end

  def destroy
    @comment.destroy!
    head :no_content
  end

private

  def comment_params
    params.permit(:text)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
