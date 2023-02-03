class UsersBackoffice::ProfileController < UsersBackofficeController
  before_action :verify_password, only: [:update]
  before_action :set_user
  
 

  def update
    if @user.update(params_user)
      bypass_sign_in(@user)
      unless params_user[:user_profile_attributes][:avatar]
        redirect_to users_backoffice_profile_path, notice: "Usuário atualizado com sucesso!"
      end
    else
      render :edit
    end    
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  
  def verify_password
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user].extract!(:password, :password_confirmation)
    end
  end
end
