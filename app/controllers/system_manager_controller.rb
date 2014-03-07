class SystemManagerController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def set_to_admin
    @user = User.find(params[:id])
    @user.update_attribute :admin, true
  end
  
  def set_to_user
    @user = User.find(params[:id])
    @user.update_attribute :admin, false
    
    respond_to do |format|
      format.html { render action: 'set_to_admin' }
    end
  end
end
