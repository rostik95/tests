class CommentsController < ApplicationController
  def create
    @blank = Blank.find(params[:blank_id])
    @comment = @blank.comments.create(comment_params)
    redirect_to testing_form_blank_path(@blank,@testing_form)
  end
 
   def destroy
    @blank = Blank.find(params[:blank_id])
    @comment = @blank.comments.find(params[:id])
    @comment.destroy
    redirect_to testing_form_blank_path(@blank,@testing_form)
  end
  private
    def comment_params
      params.require(:comment).permit(:Коментатор, :Коментарий)
    end
end
