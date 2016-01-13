module UserActions

  def load_user
    @user ||= User.find(params[:id]) if params[:id]
  end

end
