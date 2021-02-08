class ApplicationController < ActionController::API

  def routing_error(error = 'Routing error', status = :not_found, exception=nil)
    render json: { data: error }, status: 404
  end

end
