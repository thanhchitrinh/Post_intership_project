class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create]

  def show
    @micropost = Micropost.find(params[:id])
  end

  

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = current_user.feed.paginate(page: params[:page])
      render 'static_pages/home'
    end
  end

  

  private
      def micropost_params
        params.require(:micropost).permit(:content)
      end

      def correct_user
        @micropost = current_user.microposts.find_by(id: params[:id])
        redirect_to root_url if @micropost.nil?
      end
end
