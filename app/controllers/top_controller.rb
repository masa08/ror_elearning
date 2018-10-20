class TopController < ApplicationController
  def index
      if logged_in?
          @user = User.find(current_user.id)
          @activities = current_user.activity_feed.paginate(page: params[:page], per_page: 10)
      end
    end
  end
