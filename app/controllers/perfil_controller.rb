class PerfilController < ApplicationController
  def show

  	@user = User.find_by_nombre_perfil(params[:id])
  	if @user
  		@statuses = Status.all
  		render action: :show
  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end

  end
end
