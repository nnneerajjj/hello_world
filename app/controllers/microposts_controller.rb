# frozen_string_literal: true

class MicropostsController < ApplicationController
  before_action :logged_in_user, only: %i[create destroy]

  def create
    @micropost = current_user.microposts.build(micropost_params)

    if @micropost.save
      flash[:success] = 'Ho gaya!!!'
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  def destroy; end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end
end