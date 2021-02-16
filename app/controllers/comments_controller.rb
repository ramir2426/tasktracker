class CommentsController < ApplicationController
  #create comment
  def create
   @task = Task.find(params[:task_id])
   @comment = @task.comments.create(comment_params)
   redirect_to task_path(@task)
 end

 #destroy comment
 def destroy
    @task = Task.find(params[:task_id])
    @comment = @task.comments.find(params[:id])
    @comment.destroy
    redirect_to task_path(@task)
  end

 private
  #strong params for comment
  # only allow the white list through.
   def comment_params
     params.require(:comment).permit(:text, :user_id)
   end
end
