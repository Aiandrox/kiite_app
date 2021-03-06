class CommentsController < ApplicationController
  def create
    @kiite = Kiite.find(params[:kiite_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to kiite_path(@kiite), notice: "コメントしました"
    else
      redirect_to kiite_path(@kiite)
    end
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :kiite_id)
  end
end
