class CommentsController < ApplicationController
	def create
    @meetup = Meetup.find(params[:meetup_id])
    @comment = @meetup.comments.create(comment_params)
    redirect_to meetup_path(@meetup)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
