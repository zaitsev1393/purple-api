class Api::V1::CommentsController < ApplicationController

  before_action :set_comment, only: [:show, :update, :destroy]

  def index
  	@comments = Comment.all
  	render json: @comments
  end

  def show
  	json_response(@topic)
  end

  def create
    @comment = Comment.create! comment_params
    if @comment.save!
      json_response(@comment, :created)
    else
      json_response(@comment.errors, :unprocessable_entity)
    end
  end

  def update
    @comment.update_attributes! comment_params
    json_response(@comment, :updated)
  end

  def destroy
    @comment.destroy!
    head :no_content
  end

private

  def comment_params
    params.permit(:text, :user_id, :topic_id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
