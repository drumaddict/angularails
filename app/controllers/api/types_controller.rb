class Api::TypesController < Api::BaseController

  private
  def type_params
    params.require(:type).permit(:title,:description)
  end

  def query_params
    params.permit(:title)
  end

  # def index
  #   @types=Type.all
  # end

end