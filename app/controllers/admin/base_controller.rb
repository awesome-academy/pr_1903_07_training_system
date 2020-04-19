class Admin::BaseController < ActionController::Base
  protect_from_forgecy with: :exception 
  
end
