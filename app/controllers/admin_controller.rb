class AdminController < ApplicationController
  
  layout 'admin' 
  # before_action :logged_in_user, :admin_user
  http_basic_authenticate_with name: 'admin', password: 'admin'

end
