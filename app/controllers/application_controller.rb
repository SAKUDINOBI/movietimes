class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
include SessionsHelper

def redirect_if_not_found
end
end