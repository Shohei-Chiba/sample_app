class UsersController < ApplicationController
<<<<<<< HEAD
 
  before_action :authenticate_user!, :except=>[:show]
  before_action :admin_user,     only: :destroy
  
  def index
    @users = User.paginate(page: params[:page])
  end
  
 def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
 end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])

  end
 
 def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
 end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end



  private
    
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end

=======
  def show
   @user = User.find(params[:id])

  end
>>>>>>> 31fa9486edea99cf6168b5f19223dee959249132
end
