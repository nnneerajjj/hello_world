# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include SessionsHelper

  protected

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = 'Please login kar lo!'
      redirect_to login_path
    end
  end
end
