class Api::ThingsController < Api::BaseController

  def index
    respond_with :api, Thing.all
    #respond_with :api, District.find(params[:parent_id].to_i).descedants if params[:parent_id]
  end

def create
  task = task_list.tasks.create!(safe_params)
  render json: task, status: 201
end

def update
  task.update_attributes(safe_params)
  render nothing: true, status: 204
end



end