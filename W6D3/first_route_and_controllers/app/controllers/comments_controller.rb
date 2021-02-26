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

  # def create
  #   user = User.new(user_params)
  #   if user.save
  #     render json: user
  #   else
  #     render json: user.errors.full_messages, status: 422
  #   end
  # end

  # def destroy
  #   user = User.find_by(id: params[:id])
  #   user.destroy
  #   render json: user
  # end

  # private

  # def comment_params
  #   params.require(:user).permit(:username)
  # end


end
