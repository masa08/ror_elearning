class UsersController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @users = User.paginate(page: params[:page], per_page: 10)
    @lesson_users = Lesson.where(user_id: current_user.id)
    @word_count = 0
    @lesson_users.each do |lesson|
      words = lesson.category.words
      @word_count += words.count
    end
  end

  def show
    @user = User.find(params[:id])
    @lessons_learned = Lesson.where(user_id: @user.id)
    @lesson_users = Lesson.where(user_id: @user.id)
                          .paginate(page: params[:page], per_page: 10)
    # 習得言語数の所得
    @word_count = 0
    @lesson_users.each do |lesson|
      words = lesson.category.words
      @word_count += words.count
    end
    @category = Category.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update_attributes(user_params)
      redirect_to current_user
    else
      render 'edit'
    end
  end

  def show_follower
  end

  def show_following
  end

  def following
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_following'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follower'
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :image_cache)
  end


end
