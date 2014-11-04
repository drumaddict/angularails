module ApplicationHelper


  def safe_params
  params.require(:task).permit(:description, :priority, :completed)
  end
end
