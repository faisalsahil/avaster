class DashboardController < ApplicationController
  authorize_resource class: :dashboard_controller, parent: false
  
  def index
  end

end
