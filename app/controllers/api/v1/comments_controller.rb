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

  end

  def destroy
    @comment.destroy!
    head :no_content
  end

private

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
