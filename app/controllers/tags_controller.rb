class TagsController < ApplicationController
  #create tag
  def create
   @task = Task.find(params[:task_id])
   @tag = @task.tags.create(tag_params)
   redirect_to task_path(@task)
 end

 #destroy tag
 def destroy
    @task = Task.find(params[:task_id])
    @tag = @task.tags.find(params[:id])
    @tag.destroy
    redirect_to task_path(@task)
  end

 private
  #strong params for tag
  # only allow the white list through.
   def tag_params
     params.require(:tag).permit(:tag, :task_id)
   end
end
