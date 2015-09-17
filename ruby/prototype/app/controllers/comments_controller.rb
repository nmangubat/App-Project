class CommentsController < ApplicationController
	def create
    @festival = Festival.find(params[:festival_id])
    @comment = @festival.comments.create(comment_params)
    redirect_to festival_path(@festival)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
