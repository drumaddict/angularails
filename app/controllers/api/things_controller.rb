class Api::ThingsController < Api::BaseController

  private
  def type_params
    params.require(:thing).permit(:title,:description,:published,:featured)
  end

  def query_params
    params.permit(:title,:type_id)
  end

 public
  def index

    @things=Thing.where('type_id=?',params['type_id'])

  end
end