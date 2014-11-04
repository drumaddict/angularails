class Api::BaseController < ApplicationController
  #protect_fromforgery with: :null_session
  layout false
  respond_to :json
end