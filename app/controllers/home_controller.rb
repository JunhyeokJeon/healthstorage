class HomeController < ApplicationController
  def index
    @gives = Give.all.order("created_at DESC")
    @gives = @gives[0..5]
  end

  def profile
    @user=User.find(params[:user_id])
  end

end
