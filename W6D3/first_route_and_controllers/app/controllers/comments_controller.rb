class CommentsController < ApplicationController

  #create,destroy,index
  #user_id, #artwork_id
  def index
    user_comments = Comment.where(commenter_id: params[:user_id])
    artwork_comments = Comment.where(artwork_id: param[:artwork_id])
    render json: user_comments
     
  #   {
  #     user_comments: user_comments,
  #     artwork_comments: artwork_comments
  # }
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
