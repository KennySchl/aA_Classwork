class CommentsController < ApplicationController

  #create,destroy,index
  #user_id, #artwork_id
  def index
    case
    when params[:user_id]
      comments = Comment.where(user_id: params[:user_id])
    when params[:artwork_id]
      comments = Comment.where(artwork_id: params[:artwork_id])
    else
      comments = Comment.all
    end
    render json: comments
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment, status: :created
    else
      render json: comment.errors.full_messages, status: 422
    end
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    comment.destroy
    render json: comment
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter_id,:artwork_id, :body)
  end


end
