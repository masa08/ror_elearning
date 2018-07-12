class TopController < ApplicationController
  def index
      if logged_in?
          @user = User.find(current_user.id)
          @feeds = current_user.feed.paginate(page: params[:page], per_page: 10)
      end
    end
  end
